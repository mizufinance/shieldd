/-
U5b: four-way replay forking at one random-oracle position (DESIGN §U5b).

The construction records one execution, then performs three replays from the
same trace and selected oracle slot.  It rejects unless all four answers at
that slot are pairwise distinct and every replay reaches the same selected
slot without a prefix mismatch.

Spec rows: `fs.challenge-preimage`, `tipp-mipp.gipa`.
-/
import VCVio.CryptoFoundations.ReplayFork
import Mathlib.Data.Fin.VecNotation

open OracleSpec OracleComp ENNReal Function

namespace Ipp

open scoped OracleSpec.PrimitiveQuery

variable {ι : Type} {spec : OracleSpec ι} {α : Type}

/-- Canonical-run acceptance at a fork level: the selector returns a slot,
that slot is reachable in the recorded log, and it is strictly above the
parent slot when one exists. -/
def ForkSelectorAccepted [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (lower : Option (Fin (qb i + 1))) (first : α × QueryLog spec) : Prop :=
  CfReachable main qb i cf ∧
    ∃ s, cf first.1 = some s ∧
      (QueryLog.getQueryValue? first.2 i ↑s).isSome ∧
      ∀ previous, lower = some previous → previous < s

/-- Restrict a selector to slots strictly above the optional parent slot. -/
def gatedForkSelector (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (lower : Option (Fin (qb i + 1))) :
    α → Option (Fin (qb i + 1)) := fun x =>
  match cf x with
  | none => none
  | some s =>
      match lower with
      | none => some s
      | some previous => if previous < s then some s else none

/-- Reachability is preserved when the lower-slot gate only rejects selector
outputs. -/
theorem CfReachable.gated [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (lower : Option (Fin (qb i + 1)))
    (hreach : CfReachable main qb i cf) :
    CfReachable main qb i (gatedForkSelector qb i cf lower) := by
  intro x log hrun s hs
  unfold gatedForkSelector at hs
  rcases hcf : cf x with _ | selected
  · simp [hcf] at hs
  · rcases lower with _ | previous
    · simp only [hcf] at hs
      have hsel : selected = s := Option.some.inj hs
      subst s
      exact hreach hrun selected hcf
    · by_cases hstrict : previous < selected
      · simp [hcf, hstrict] at hs
        subst s
        exact hreach hrun selected hcf
      · simp [hcf, hstrict] at hs

private lemma take_eq_of_getElem?_eq_below {β : Type} (xs ys : List β) (n : Nat)
    (h : ∀ m, m < n → xs[m]? = ys[m]?) : xs.take n = ys.take n := by
  induction n generalizing xs ys with
  | zero => rfl
  | succ n ih =>
      cases xs with
      | nil =>
          cases ys with
          | nil => rfl
          | cons y ys => simpa using h 0 (Nat.zero_lt_succ n)
      | cons x xs =>
          cases ys with
          | nil => simpa using h 0 (Nat.zero_lt_succ n)
          | cons y ys =>
              have hxy : x = y := by simpa using h 0 (Nat.zero_lt_succ n)
              subst y
              simp only [List.take_succ_cons, List.cons.injEq, true_and]
              apply ih
              intro m hm
              simpa using h (m + 1) (Nat.succ_lt_succ hm)

/-! ## Replay-contextual fail-closed refinement -/

/-- Every output reachable under arbitrary answers satisfies `predicate`.

This is deliberately stronger than ordinary uniform-oracle support.  Replay
forks reinterpret a computation under logging and replacement handlers, so an
abort branch must remain an abort under every such interpretation. -/
def OracleAllOutputs {β : Type}
    (predicate : β → Prop)
    (program : OracleComp spec β) : Prop :=
  ∀ output,
    output ∈ OracleComp.supportWhen
      ((fun _ : spec.Domain => Set.univ) : QueryImpl spec Set)
      program →
    predicate output

namespace OracleAllOutputs

theorem ofPure {β : Type} {predicate : β → Prop}
    {output : β} (houtput : predicate output) :
    OracleAllOutputs predicate
      (pure output : OracleComp spec β) := by
  simpa [OracleAllOutputs] using houtput

theorem bind {β γ : Type}
    {predicate : β → Prop}
    {nextPredicate : γ → Prop}
    {program : OracleComp spec β}
    {next : β → OracleComp spec γ}
    (hprogram : OracleAllOutputs predicate program)
    (hnext : ∀ output, predicate output →
      OracleAllOutputs nextPredicate (next output)) :
    OracleAllOutputs nextPredicate (program >>= next) := by
  intro result hresult
  rw [OracleComp.mem_supportWhen_bind_iff] at hresult
  obtain ⟨output, houtput, hresult⟩ := hresult
  exact hnext output (hprogram output houtput) result hresult

theorem map {β γ : Type}
    {predicate : β → Prop}
    {nextPredicate : γ → Prop}
    {program : OracleComp spec β}
    (hprogram : OracleAllOutputs predicate program)
    (transform : β → γ)
    (htransform : ∀ output, predicate output →
      nextPredicate (transform output)) :
    OracleAllOutputs nextPredicate (transform <$> program) := by
  rw [map_eq_pure_bind]
  refine OracleAllOutputs.bind
    (spec := spec)
    (nextPredicate := nextPredicate)
    hprogram ?_
  intro output houtput
  exact OracleAllOutputs.ofPure
    (spec := spec)
    (htransform output houtput)

theorem ofQuery {β : Type}
    {predicate : β → Prop}
    (point : spec.Domain)
    (continuation : spec.Range point → OracleComp spec β)
    (hcontinuation : ∀ answer,
      OracleAllOutputs predicate (continuation answer)) :
  OracleAllOutputs predicate
      ((query point : OracleComp spec _) >>= continuation) := by
  intro output houtput
  simp only [OracleComp.supportWhen_query_bind,
    Set.mem_iUnion, exists_prop] at houtput
  obtain ⟨answer, _, houtput⟩ := houtput
  exact hcontinuation answer output houtput

theorem branch {β : Type}
    {predicate : β → Prop}
    {point : spec.Domain}
    {continuation : spec.Range point → OracleComp spec β}
    (hprogram :
      OracleAllOutputs predicate
        ((query point : OracleComp spec _) >>= continuation))
    (answer : spec.Range point) :
    OracleAllOutputs predicate (continuation answer) := by
  intro output houtput
  apply hprogram output
  simp only [OracleComp.supportWhen_query_bind,
    Set.mem_iUnion, exists_prop]
  exact ⟨answer, Set.mem_univ answer, houtput⟩

/-- A result excluded by an arbitrary-answer output invariant has zero
uniform-oracle probability. -/
theorem probOutput_eq_zero
    [IsUniformSpec spec]
    {β : Type}
    {predicate : β → Prop}
    {program : OracleComp spec β}
    (hall : OracleAllOutputs predicate program)
    (output : β)
    (hexcluded : ¬ predicate output) :
    Pr[= output | program] = 0 := by
  letI : DecidableEq β := Classical.decEq β
  induction program using OracleComp.inductionOn with
  | pure result =>
      have hresult : predicate result := by
        apply hall result
        simp only [OracleComp.supportWhen_pure, Set.mem_singleton_iff]
      have hne : output ≠ result := by
        intro hequal
        apply hexcluded
        rw [hequal]
        exact hresult
      rw [probOutput_pure, if_neg hne]
  | query_bind point continuation ih =>
      rw [probOutput_bind_eq_tsum]
      apply ENNReal.tsum_eq_zero.mpr
      intro answer
      rw [ih answer (OracleAllOutputs.branch hall answer)]
      simp

end OracleAllOutputs

/-- A query-structural refinement that may stop following the right program
once every possible left output is fail-closed.

On a successful branch both programs issue the same next query and their
continuations remain related.  Consequently the relation is preserved by
logging, fixed-trace replay, and arbitrary stateful query interpretations; it
does not discard the operational information that a fresh `evalDist`
comparison would lose. -/
inductive OracleFailClosedRefines
    {β γ : Type}
    (fails : β → Prop)
    (relates : β → γ → Prop) :
    OracleComp spec β → OracleComp spec γ → Prop
  | abort
      (left : OracleComp spec β)
      (right : OracleComp spec γ)
      (hall : OracleAllOutputs fails left) :
      OracleFailClosedRefines fails relates left right
  | pureMatch
      (left : β)
      (right : γ)
      (hmatch : relates left right) :
      OracleFailClosedRefines fails relates
        (pure left) (pure right)
  | queryStep
      (point : spec.Domain)
      (left : spec.Range point → OracleComp spec β)
      (right : spec.Range point → OracleComp spec γ)
      (hbranches : ∀ answer,
        OracleFailClosedRefines fails relates
          (left answer) (right answer)) :
      OracleFailClosedRefines fails relates
        ((query point : OracleComp spec _) >>= left)
        ((query point : OracleComp spec _) >>= right)

namespace OracleFailClosedRefines

theorem bind {β γ δ ε : Type}
    {fails : β → Prop}
    {relates : β → γ → Prop}
    {nextFails : δ → Prop}
    {nextMatches : δ → ε → Prop}
    {left : OracleComp spec β}
    {right : OracleComp spec γ}
    (refines :
      OracleFailClosedRefines fails relates left right)
    (leftNext : β → OracleComp spec δ)
    (rightNext : γ → OracleComp spec ε)
    (abortClosed : ∀ output, fails output →
      OracleAllOutputs nextFails (leftNext output))
    (matchedNext : ∀ leftOutput rightOutput,
      relates leftOutput rightOutput →
        OracleFailClosedRefines nextFails nextMatches
          (leftNext leftOutput) (rightNext rightOutput)) :
    OracleFailClosedRefines nextFails nextMatches
      (left >>= leftNext) (right >>= rightNext) := by
  induction refines with
  | abort left right hall =>
      apply OracleFailClosedRefines.abort
      exact OracleAllOutputs.bind hall abortClosed
  | pureMatch left right hmatch =>
      simpa using matchedNext left right hmatch
  | queryStep point left right hbranches ih =>
      simpa only [bind_assoc] using
        OracleFailClosedRefines.queryStep point
          (fun answer => left answer >>= leftNext)
          (fun answer => right answer >>= rightNext)
          ih

theorem bindSame {α β γ : Type}
    {fails : β → Prop}
    {relates : β → γ → Prop}
    (shared : OracleComp spec α)
    (leftNext : α → OracleComp spec β)
    (rightNext : α → OracleComp spec γ)
    (hnext : ∀ output,
      OracleFailClosedRefines fails relates
        (leftNext output) (rightNext output)) :
    OracleFailClosedRefines fails relates
      (shared >>= leftNext) (shared >>= rightNext) := by
  induction shared using OracleComp.inductionOn with
  | pure output =>
      simpa using hnext output
  | query_bind point continuation ih =>
      simpa only [bind_assoc] using
        OracleFailClosedRefines.queryStep point
          (fun answer => continuation answer >>= leftNext)
          (fun answer => continuation answer >>= rightNext)
          ih

theorem map {β γ δ ε : Type}
    {fails : β → Prop}
    {relates : β → γ → Prop}
    {nextFails : δ → Prop}
    {nextMatches : δ → ε → Prop}
    {left : OracleComp spec β}
    {right : OracleComp spec γ}
    (refines :
      OracleFailClosedRefines fails relates left right)
    (leftMap : β → δ)
    (rightMap : γ → ε)
    (abortMap : ∀ output, fails output →
      nextFails (leftMap output))
    (matchMap : ∀ leftOutput rightOutput,
      relates leftOutput rightOutput →
        nextMatches (leftMap leftOutput) (rightMap rightOutput)) :
    OracleFailClosedRefines nextFails nextMatches
      (leftMap <$> left) (rightMap <$> right) := by
  simp only [map_eq_pure_bind]
  refine OracleFailClosedRefines.bind refines
    (fun output => pure (leftMap output))
    (fun output => pure (rightMap output))
    ?_ ?_
  · intro output houtput
    exact OracleAllOutputs.ofPure (abortMap output houtput)
  · intro leftOutput rightOutput hmatch
    exact OracleFailClosedRefines.pureMatch
      _ _ (matchMap leftOutput rightOutput hmatch)

/-- Deterministic post-processing may reclassify a previously matched branch
as fail-closed.  This is the congruence used when a replay selector rejects a
successful optional value. -/
theorem mapGate {β γ δ ε : Type}
    {fails : β → Prop}
    {relates : β → γ → Prop}
    {nextFails : δ → Prop}
    {nextMatches : δ → ε → Prop}
    {left : OracleComp spec β}
    {right : OracleComp spec γ}
    (refines :
      OracleFailClosedRefines fails relates left right)
    (leftMap : β → δ)
    (rightMap : γ → ε)
    (abortMap : ∀ output, fails output →
      nextFails (leftMap output))
    (classify : ∀ leftOutput rightOutput,
      relates leftOutput rightOutput →
        nextFails (leftMap leftOutput) ∨
          nextMatches
            (leftMap leftOutput) (rightMap rightOutput)) :
    OracleFailClosedRefines nextFails nextMatches
      (leftMap <$> left) (rightMap <$> right) := by
  induction refines with
  | abort left right hall =>
      apply OracleFailClosedRefines.abort
      exact OracleAllOutputs.map hall leftMap abortMap
  | pureMatch left right hmatch =>
      rcases classify left right hmatch with hfailure | hsuccess
      · exact OracleFailClosedRefines.abort
          _ _ (OracleAllOutputs.ofPure hfailure)
      · exact OracleFailClosedRefines.pureMatch
          _ _ hsuccess
  | queryStep point left right hbranches ih =>
      simpa only [map_eq_pure_bind, bind_assoc] using
        OracleFailClosedRefines.queryStep point
          (fun answer => leftMap <$> left answer)
          (fun answer => rightMap <$> right answer)
          ih

end OracleFailClosedRefines

/-- Lift a fail-closed output predicate through a stateful interpretation. -/
def stateOutputFails {β State : Type}
    (fails : β → Prop) : β × State → Prop :=
  fun output => fails output.1

/-- Lift a successful-output relation through a stateful interpretation.
Successful executions must finish in the same interpreter state. -/
def stateOutputsMatch {β γ State : Type}
    (relates : β → γ → Prop) :
    β × State → γ × State → Prop :=
  fun left right =>
    relates left.1 right.1 ∧ left.2 = right.2

namespace OracleAllOutputs

/-- Arbitrary-answer closure survives any stateful oracle interpretation.
This is the operational fact needed for fixed-trace replay: the interpreter
may change the query schedule, but it cannot manufacture a non-failing return
value from a source computation whose every return value fails. -/
theorem simulateQState
    {κ : Type}
    {outerSpec : OracleSpec κ}
    {β State : Type}
    {predicate : β → Prop}
    (handler :
      QueryImpl spec (StateT State (OracleComp outerSpec)))
    (program : OracleComp spec β) :
    OracleAllOutputs predicate program →
      ∀ state,
        OracleAllOutputs (stateOutputFails predicate)
          ((simulateQ handler program).run state) := by
  induction program using OracleComp.inductionOn with
  | pure output =>
      intro hall state
      have houtput : predicate output := by
        apply hall output
        simp [OracleAllOutputs]
      simpa [stateOutputFails, StateT.run_pure] using
        (OracleAllOutputs.ofPure
          (spec := outerSpec)
          (output := (output, state))
          houtput)
  | query_bind point continuation ih =>
      intro hall state
      simp only [simulateQ_query_bind, StateT.run_bind]
      refine OracleAllOutputs.bind
        (spec := outerSpec)
        (predicate := fun _ : spec.Range point × State => True)
        (nextPredicate := stateOutputFails predicate)
        ?_ ?_
      · intro _ _
        trivial
      · rintro ⟨answer, nextState⟩ _
        exact ih answer
          (OracleAllOutputs.branch hall answer)
          nextState

end OracleAllOutputs

namespace OracleFailClosedRefines

/-- Fail-closed refinement is preserved by an arbitrary stateful query
implementation.  In particular this applies to `replayOracle` for every
trace, fork position, replacement value, and initial replay state. -/
theorem simulateQState
    {κ : Type}
    {outerSpec : OracleSpec κ}
    {β γ State : Type}
    {fails : β → Prop}
    {relates : β → γ → Prop}
    {left : OracleComp spec β}
    {right : OracleComp spec γ}
    (refines :
      OracleFailClosedRefines fails relates left right)
    (handler :
      QueryImpl spec (StateT State (OracleComp outerSpec)))
    (state : State) :
    OracleFailClosedRefines
      (stateOutputFails fails)
      (stateOutputsMatch relates)
      ((simulateQ handler left).run state)
      ((simulateQ handler right).run state) := by
  induction refines generalizing state with
  | abort left right hall =>
      apply OracleFailClosedRefines.abort
      exact OracleAllOutputs.simulateQState
        handler left hall state
  | pureMatch left right hmatch =>
      simpa [stateOutputsMatch, StateT.run_pure] using
        (OracleFailClosedRefines.pureMatch
          (spec := outerSpec)
          (left := (left, state))
          (right := (right, state))
          ⟨hmatch, rfl⟩)
  | queryStep point left right hbranches ih =>
      simp only [simulateQ_query_bind, OracleQuery.input_query,
        monadLift_self, StateT.run_bind]
      refine OracleFailClosedRefines.bindSame
        ((handler point).run state)
        (fun output =>
          (simulateQ handler
            (left ((query point).cont output.1))).run output.2)
        (fun output =>
          (simulateQ handler
            (right ((query point).cont output.1))).run output.2)
        ?_
      rintro ⟨answer, nextState⟩
      exact ih ((query point).cont answer) nextState

end OracleFailClosedRefines

/-- Lift a predicate through the exact log returned by `replayFirstRun`. -/
def loggedOutputFails {β : Type}
    (fails : β → Prop) :
    β × QueryLog spec → Prop :=
  fun output => fails output.1

/-- Successful logged executions agree on both output and complete log. -/
def loggedOutputsMatch {β γ : Type}
    (relates : β → γ → Prop) :
    β × QueryLog spec → γ × QueryLog spec → Prop :=
  fun left right =>
    relates left.1 right.1 ∧ left.2 = right.2

namespace OracleAllOutputs

theorem replayFirstRun
    {β : Type}
    {predicate : β → Prop}
    (program : OracleComp spec β) :
    OracleAllOutputs predicate program →
      OracleAllOutputs (loggedOutputFails predicate)
        (OracleComp.replayFirstRun program) := by
  induction program using OracleComp.inductionOn with
  | pure output =>
      intro hall
      have houtput : predicate output := by
        apply hall output
        simp [OracleAllOutputs]
      simpa [OracleComp.replayFirstRun, loggedOutputFails] using
        (OracleAllOutputs.ofPure
          (spec := spec)
          (output := (output, ([] : QueryLog spec)))
          houtput)
  | query_bind point continuation ih =>
      intro hall
      rw [OracleComp.replayFirstRun,
        OracleComp.run_simulateQ_loggingOracle_query_bind]
      apply OracleAllOutputs.ofQuery
      intro answer
      refine OracleAllOutputs.map
        (spec := spec)
        (nextPredicate := loggedOutputFails predicate)
        (ih answer (OracleAllOutputs.branch hall answer))
        (fun output =>
          (output.1,
            (⟨point, answer⟩ :
              (index : spec.Domain) × spec.Range index) ::
              output.2)) ?_
      intro output houtput
      exact houtput

end OracleAllOutputs

namespace OracleFailClosedRefines

/-- Query-structural fail-closed refinement preserves the exact successful
transcript returned by `replayFirstRun`. -/
theorem replayFirstRun
    {β γ : Type}
    {fails : β → Prop}
    {relates : β → γ → Prop}
    {left : OracleComp spec β}
    {right : OracleComp spec γ}
    (refines :
      OracleFailClosedRefines fails relates left right) :
    OracleFailClosedRefines
      (loggedOutputFails fails)
      (loggedOutputsMatch relates)
      (OracleComp.replayFirstRun left)
      (OracleComp.replayFirstRun right) := by
  induction refines with
  | abort left right hall =>
      apply OracleFailClosedRefines.abort
      exact OracleAllOutputs.replayFirstRun left hall
  | pureMatch left right hmatch =>
      simpa [OracleComp.replayFirstRun, loggedOutputsMatch] using
        (OracleFailClosedRefines.pureMatch
          (spec := spec)
          (left := (left, ([] : QueryLog spec)))
          (right := (right, ([] : QueryLog spec)))
          ⟨hmatch, rfl⟩)
  | queryStep point left right hbranches ih =>
      rw [OracleComp.replayFirstRun,
        OracleComp.run_simulateQ_loggingOracle_query_bind,
        OracleComp.replayFirstRun,
        OracleComp.run_simulateQ_loggingOracle_query_bind]
      apply OracleFailClosedRefines.queryStep
      intro answer
      refine OracleFailClosedRefines.map (ih answer)
        (fun output =>
          (output.1,
            (⟨point, answer⟩ :
              (index : spec.Domain) × spec.Range index) ::
              output.2))
        (fun output =>
          (output.1,
            (⟨point, answer⟩ :
              (index : spec.Domain) × spec.Range index) ::
              output.2))
        ?_ ?_
      · intro output houtput
        exact houtput
      · intro leftOutput rightOutput hmatch
        exact ⟨hmatch.1, congrArg
          (fun log =>
            (⟨point, answer⟩ :
              (index : spec.Domain) × spec.Range index) :: log)
          hmatch.2⟩

end OracleFailClosedRefines

/-- Exact agreement on a successful optional output. -/
def sameSome {β : Type} :
    Option β → Option β → Prop :=
  fun left right =>
    ∃ output, left = some output ∧ right = some output

/-- Operational refinement for option-valued oracle programs.  The left
program may fail earlier or on more answer paths; every successful left path
has an identical right path with the same query behavior. -/
abbrev OracleOptionSuccessRefines {β : Type}
    (left right : OracleComp spec (Option β)) : Prop :=
  OracleFailClosedRefines
    (fun output => output = none)
    sameSome
    left right

/-- Failure and successful matching as observed by a fork selector. -/
def selectorFails
    {β Slot : Type}
    (selector : β → Option Slot) :
    β → Prop :=
  fun output => selector output = none

def selectorMatches
    {β Slot : Type}
    (selector : β → Option Slot) :
    β → β → Prop :=
  fun left right =>
    left = right ∧ ∃ slot, selector left = some slot

/-- Replay-contextual refinement at exactly the outputs retained by a fork
selector. -/
abbrev OracleSelectorRefines
    {β Slot : Type}
    (selector : β → Option Slot)
    (left right : OracleComp spec β) : Prop :=
  OracleFailClosedRefines
    (selectorFails selector)
    (selectorMatches selector)
    left right

theorem oracleOptionSuccessRefines_refl
    {β : Type}
    (program : OracleComp spec (Option β)) :
    OracleOptionSuccessRefines program program := by
  induction program using OracleComp.inductionOn with
  | pure output =>
      cases output with
      | none =>
          exact OracleFailClosedRefines.abort
            _ _ (OracleAllOutputs.ofPure rfl)
      | some output =>
          exact OracleFailClosedRefines.pureMatch
            _ _ ⟨output, rfl, rfl⟩
  | query_bind point continuation ih =>
      exact OracleFailClosedRefines.queryStep
        point continuation continuation ih

theorem OracleOptionSuccessRefines.probOutput_le
    [IsUniformSpec spec]
    {β : Type}
    {left right : OracleComp spec (Option β)}
    (refines : OracleOptionSuccessRefines left right)
    (output : β) :
    Pr[= some output | left] ≤
      Pr[= some output | right] := by
  induction refines with
  | abort left right hall =>
      rw [OracleAllOutputs.probOutput_eq_zero
        hall (some output) (by simp)]
      exact bot_le
  | pureMatch left right hmatch =>
      obtain ⟨result, rfl, rfl⟩ := hmatch
      exact le_rfl
  | queryStep point left right hbranches ih =>
      rw [probOutput_bind_eq_tsum,
        probOutput_bind_eq_tsum]
      apply ENNReal.tsum_le_tsum
      intro answer
      exact mul_le_mul_left' (ih answer) _

theorem OracleOptionSuccessRefines.map
    {β γ : Type}
    {left right : OracleComp spec (Option β)}
    (refines : OracleOptionSuccessRefines left right)
    (transform : β → γ) :
    OracleOptionSuccessRefines
      (Option.map transform <$> left)
      (Option.map transform <$> right) := by
  refine OracleFailClosedRefines.map refines
    (Option.map transform)
    (Option.map transform)
    ?_ ?_
  · intro output houtput
    subst output
    rfl
  · intro leftOutput rightOutput hmatch
    obtain ⟨output, rfl, rfl⟩ := hmatch
    exact ⟨transform output, rfl, rfl⟩

/-- Deterministic fail-closed option post-processing preserves operational
success refinement. -/
theorem OracleOptionSuccessRefines.mapOptionGate
    {β γ : Type}
    {left right : OracleComp spec (Option β)}
    (refines : OracleOptionSuccessRefines left right)
    (transform : Option β → Option γ)
    (failureClosed : transform none = none) :
    OracleOptionSuccessRefines
      (transform <$> left)
      (transform <$> right) := by
  refine OracleFailClosedRefines.mapGate
    refines transform transform ?_ ?_
  · intro output houtput
    subst output
    exact failureClosed
  · intro leftOutput rightOutput hmatch
    obtain ⟨output, rfl, rfl⟩ := hmatch
    cases hresult : transform (some output) with
    | none =>
        exact Or.inl rfl
    | some result =>
        exact Or.inr ⟨result, rfl, rfl⟩

/-- Fail-closed refinement before applying a deterministic optional
finisher. -/
def finishFails {β γ : Type}
    (finish : β → Option γ) :
    β → Prop :=
  fun output => finish output = none

def finishMatches {β γ : Type}
    (finish : β → Option γ) :
    β → β → Prop :=
  fun left right =>
    left = right ∧ (finish left).isSome

abbrev OracleFinishedRefines {β γ : Type}
    (finish : β → Option γ)
    (left right : OracleComp spec β) : Prop :=
  OracleFailClosedRefines
    (finishFails finish)
    (finishMatches finish)
    left right

theorem oracleFinishedRefines_refl
    {β γ : Type}
    (finish : β → Option γ)
    (program : OracleComp spec β) :
    OracleFinishedRefines finish program program := by
  induction program using OracleComp.inductionOn with
  | pure output =>
      cases hfinish : finish output with
      | none =>
          exact OracleFailClosedRefines.abort
            _ _ (OracleAllOutputs.ofPure hfinish)
      | some result =>
          exact OracleFailClosedRefines.pureMatch
            _ _ ⟨rfl, by simp [hfinish]⟩
  | query_bind point continuation ih =>
      exact OracleFailClosedRefines.queryStep
        point continuation continuation ih

theorem OracleFinishedRefines.finish
    {β γ : Type}
    {finish : β → Option γ}
    {left right : OracleComp spec β}
    (refines : OracleFinishedRefines finish left right) :
    OracleOptionSuccessRefines
      (finish <$> left)
      (finish <$> right) := by
  refine OracleFailClosedRefines.map
    refines finish finish ?_ ?_
  · intro output houtput
    exact houtput
  · intro leftOutput rightOutput hmatch
    change leftOutput = rightOutput ∧
      (finish leftOutput).isSome at hmatch
    rcases hmatch with ⟨hequal, hsome⟩
    subst rightOutput
    rcases hfinished : finish leftOutput with _ | result
    · simp [hfinished] at hsome
    · exact ⟨result, rfl, rfl⟩

/-- Replay once from `trace` at `s`, retaining only runs that consume the fork
without a prefix mismatch and whose output selects the same slot. -/
private def checkedReplay [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (trace : QueryLog spec)
    (s : Fin (qb i + 1)) (replacement : spec.Range i) :
    OracleComp spec (Option (α × ReplayForkState spec i)) := do
  let z ← replayRunWithTraceValue main i trace ↑s replacement
  if z.2.mismatch || !z.2.forkConsumed then
    pure none
  else if cf z.1 = some s then
    pure (some z)
  else
    pure none

/-- `checkedReplay` preserves every selector-visible successful execution of
a replay-contextually refined source computation. -/
private theorem checkedReplay_selectorRefines
    [spec.DecidableEq]
    (left right : OracleComp spec α)
    (qb : ι → Nat)
    (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (trace : QueryLog spec)
    (slot : Fin (qb i + 1))
    (replacement : spec.Range i)
    (refines : OracleSelectorRefines cf left right) :
    OracleOptionSuccessRefines
      (checkedReplay left qb i cf trace slot replacement)
      (checkedReplay right qb i cf trace slot replacement) := by
  let initial :=
    ReplayForkState.init trace (slot : Nat) replacement
  let finish :
      α × ReplayForkState spec i →
        OracleComp spec
          (Option (α × ReplayForkState spec i)) :=
    fun output =>
      if output.2.mismatch || !output.2.forkConsumed then
        pure none
      else if cf output.1 = some slot then
        pure (some output)
      else
        pure none
  have hreplay :
      OracleFailClosedRefines
        (stateOutputFails (selectorFails cf))
        (stateOutputsMatch (selectorMatches cf))
        (replayRunWithTraceValue
          left i trace (slot : Nat) replacement)
        (replayRunWithTraceValue
          right i trace (slot : Nat) replacement) := by
    simpa [replayRunWithTraceValue, initial] using
      OracleFailClosedRefines.simulateQState
        refines (replayOracle i) initial
  change OracleOptionSuccessRefines
    (replayRunWithTraceValue
      left i trace (slot : Nat) replacement >>= finish)
    (replayRunWithTraceValue
      right i trace (slot : Nat) replacement >>= finish)
  refine OracleFailClosedRefines.bind
    hreplay finish finish ?_ ?_
  · intro output hfailure
    have hselector : cf output.1 = none := by
      simpa [stateOutputFails, selectorFails] using hfailure
    have hfinish : finish output = pure none := by
      simp [finish, hselector]
    rw [hfinish]
    exact OracleAllOutputs.ofPure rfl
  · intro leftOutput rightOutput hmatch
    change
      selectorMatches cf leftOutput.1 rightOutput.1 ∧
        leftOutput.2 = rightOutput.2 at hmatch
    have hvalue : leftOutput.1 = rightOutput.1 := by
      exact hmatch.1.1
    have hstate : leftOutput.2 = rightOutput.2 := hmatch.2
    have houtput : leftOutput = rightOutput := by
      cases leftOutput
      cases rightOutput
      simp_all
    subst rightOutput
    exact oracleOptionSuccessRefines_refl
      (finish leftOutput)

/-- Complete one replay attempt after its replacement has been sampled. -/
private def replayTrialWithReplacement [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (trace : QueryLog spec)
    (s : Fin (qb i + 1)) (logged : spec.Range i)
    (replacement : spec.Range i) :
    OracleComp spec (Option (spec.Range i × (α × ReplayForkState spec i))) := do
  if replacement = logged then
    pure none
  else
    let z? ← checkedReplay main qb i cf trace s replacement
    pure ((replacement, ·) <$> z?)

/-- One fixed replacement trial preserves selector-visible successful
executions. -/
private theorem replayTrialWithReplacement_selectorRefines
    [spec.DecidableEq]
    (left right : OracleComp spec α)
    (qb : ι → Nat)
    (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (trace : QueryLog spec)
    (slot : Fin (qb i + 1))
    (logged replacement : spec.Range i)
    (refines : OracleSelectorRefines cf left right) :
    OracleOptionSuccessRefines
      (replayTrialWithReplacement
        left qb i cf trace slot logged replacement)
      (replayTrialWithReplacement
        right qb i cf trace slot logged replacement) := by
  by_cases hequal : replacement = logged
  · simpa [replayTrialWithReplacement, hequal] using
      (oracleOptionSuccessRefines_refl
        (pure none :
          OracleComp spec
            (Option
              (spec.Range i ×
                (α × ReplayForkState spec i)))))
  · have hchecked :=
      checkedReplay_selectorRefines
        left right qb i cf trace slot replacement refines
    simpa [replayTrialWithReplacement, hequal] using
      OracleOptionSuccessRefines.map
        hchecked (fun output => (replacement, output))

/-- One independent replay attempt, retaining the sampled replacement so
cross-attempt collisions can be filtered after all attempts have run. -/
private def replayTrial [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (trace : QueryLog spec)
    (s : Fin (qb i + 1)) (logged : spec.Range i)
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option (spec.Range i × (α × ReplayForkState spec i))) := do
  let replacement ← liftComp ($ᵗ spec.Range i) spec
  replayTrialWithReplacement main qb i cf trace s logged replacement

/-- A randomized replacement trial preserves selector-visible successful
executions because both sides sample the same replacement before replay. -/
private theorem replayTrial_selectorRefines
    [spec.DecidableEq]
    (left right : OracleComp spec α)
    (qb : ι → Nat)
    (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (trace : QueryLog spec)
    (slot : Fin (qb i + 1))
    (logged : spec.Range i)
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (refines : OracleSelectorRefines cf left right) :
    OracleOptionSuccessRefines
      (replayTrial left qb i cf trace slot logged)
      (replayTrial right qb i cf trace slot logged) := by
  unfold replayTrial
  apply OracleFailClosedRefines.bindSame
    (liftComp ($ᵗ spec.Range i) spec)
  intro replacement
  exact replayTrialWithReplacement_selectorRefines
    left right qb i cf trace slot logged replacement refines

/-- Three replay attempts rooted at an already-recorded canonical run. -/
private def forkReplay4FromCore [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (first : α × QueryLog spec)
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec ((α × QueryLog spec) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i))) := do
  match cf first.1 with
  | none => pure (first, none, none, none)
  | some s =>
      match QueryLog.getQueryValue? first.2 i ↑s with
      | none => pure (first, none, none, none)
      | some logged =>
          let z₁? ← replayTrial main qb i cf first.2 s logged
          let z₂? ← replayTrial main qb i cf first.2 s logged
          let z₃? ← replayTrial main qb i cf first.2 s logged
          pure (first, z₁?, z₂?, z₃?)

/-- The shared-first-run experiment with three independent replay attempts,
before filtering collisions among their replacement answers. -/
private def forkReplay4Core [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec ((α × QueryLog spec) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i))) := do
  let first ← replayFirstRun main
  forkReplay4FromCore main qb i cf first

/-- Retain a raw three-trial result exactly when all attempts succeeded and
their replacements are pairwise distinct. -/
private noncomputable def finishForkReplay4 {i : ι} :
    ((α × QueryLog spec) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i))) →
      Option (Fin 4 → α) := by
  classical
  exact fun
    | (first, some (u₁, z₁), some (u₂, z₂), some (u₃, z₃)) =>
        if u₂ = u₁ then none
        else if u₃ = u₁ then none
        else if u₃ = u₂ then none
        else some ![first.1, z₁.1, z₂.1, z₃.1]
    | _ => none

/-- Three replay trials preserve the optional finisher's successful paths.
Abort closure is stated over all possible remaining trial outputs, so one
side may consume a different failed-path query suffix without weakening the
success relation. -/
private theorem forkReplay4Trials_finishedRefines
    [spec.DecidableEq]
    (left right : OracleComp spec α)
    (qb : ι → Nat)
    (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (first : α × QueryLog spec)
    (slot : Fin (qb i + 1))
    (logged : spec.Range i)
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (refines : OracleSelectorRefines cf left right) :
    OracleFinishedRefines
      (finishForkReplay4 (spec := spec) (α := α) (i := i))
      (do
        let z₁ ← replayTrial left qb i cf first.2 slot logged
        let z₂ ← replayTrial left qb i cf first.2 slot logged
        let z₃ ← replayTrial left qb i cf first.2 slot logged
        pure (first, z₁, z₂, z₃))
      (do
        let z₁ ← replayTrial right qb i cf first.2 slot logged
        let z₂ ← replayTrial right qb i cf first.2 slot logged
        let z₃ ← replayTrial right qb i cf first.2 slot logged
        pure (first, z₁, z₂, z₃)) := by
  let leftTrial :=
    replayTrial left qb i cf first.2 slot logged
  let rightTrial :=
    replayTrial right qb i cf first.2 slot logged
  have htrial :
      OracleOptionSuccessRefines leftTrial rightTrial := by
    exact replayTrial_selectorRefines
      left right qb i cf first.2 slot logged refines
  refine OracleFailClosedRefines.bind htrial
    (fun z₁ => do
      let z₂ ← leftTrial
      let z₃ ← leftTrial
      pure (first, z₁, z₂, z₃))
    (fun z₁ => do
      let z₂ ← rightTrial
      let z₃ ← rightTrial
      pure (first, z₁, z₂, z₃))
    ?_ ?_
  · intro z₁ hz₁
    subst z₁
    refine OracleAllOutputs.bind
      (spec := spec)
      (predicate := fun _ :
        Option
          (spec.Range i ×
            (α × ReplayForkState spec i)) => True)
      (nextPredicate :=
        finishFails
          (finishForkReplay4
            (spec := spec) (α := α) (i := i)))
      ?_ ?_
    · intro _ _
      trivial
    · intro z₂ _
      refine OracleAllOutputs.bind
        (spec := spec)
        (predicate := fun _ :
          Option
            (spec.Range i ×
              (α × ReplayForkState spec i)) => True)
        (nextPredicate :=
          finishFails
            (finishForkReplay4
              (spec := spec) (α := α) (i := i)))
        ?_ ?_
      · intro _ _
        trivial
      · intro z₃ _
        exact OracleAllOutputs.ofPure (by
          simp [finishFails, finishForkReplay4])
  · intro leftZ₁ rightZ₁ hz₁
    obtain ⟨z₁, rfl, rfl⟩ := hz₁
    refine OracleFailClosedRefines.bind htrial
      (fun z₂ => do
        let z₃ ← leftTrial
        pure (first, some z₁, z₂, z₃))
      (fun z₂ => do
        let z₃ ← rightTrial
        pure (first, some z₁, z₂, z₃))
      ?_ ?_
    · intro z₂ hz₂
      subst z₂
      refine OracleAllOutputs.bind
        (spec := spec)
        (predicate := fun _ :
          Option
            (spec.Range i ×
              (α × ReplayForkState spec i)) => True)
        (nextPredicate :=
          finishFails
            (finishForkReplay4
              (spec := spec) (α := α) (i := i)))
        ?_ ?_
      · intro _ _
        trivial
      · intro z₃ _
        exact OracleAllOutputs.ofPure (by
          simp [finishFails, finishForkReplay4])
    · intro leftZ₂ rightZ₂ hz₂
      obtain ⟨z₂, rfl, rfl⟩ := hz₂
      refine OracleFailClosedRefines.bind htrial
        (fun z₃ =>
          pure (first, some z₁, some z₂, z₃))
        (fun z₃ =>
          pure (first, some z₁, some z₂, z₃))
        ?_ ?_
      · intro z₃ hz₃
        subst z₃
        exact OracleAllOutputs.ofPure (by
          simp [finishFails, finishForkReplay4])
      · intro leftZ₃ rightZ₃ hz₃
        obtain ⟨z₃, rfl, rfl⟩ := hz₃
        exact oracleFinishedRefines_refl
          (finishForkReplay4
            (spec := spec) (α := α) (i := i))
          (pure
            (first, some z₁, some z₂, some z₃))

/-- Retain the four canonical `(output, log)` runs produced from a fixed root. -/
private noncomputable def finishForkReplay4From {i : ι} :
    ((α × QueryLog spec) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i))) →
      Option (Fin 4 → α × QueryLog spec) := by
  classical
  exact fun
    | (first, some (u₁, z₁), some (u₂, z₂), some (u₃, z₃)) =>
        if u₂ = u₁ then none
        else if u₃ = u₁ then none
        else if u₃ = u₂ then none
        else some ![first, (z₁.1, z₁.2.observed), (z₂.1, z₂.2.observed),
          (z₃.1, z₃.2.observed)]
    | _ => none

/-- Four logged runs forked from an already-recorded canonical run (DESIGN
§U5c; `tipp-mipp.gipa`).  Child `0` is definitionally the supplied run. -/
noncomputable def forkReplay4From [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (first : α × QueryLog spec)
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option (Fin 4 → α × QueryLog spec)) :=
  finishForkReplay4From <$> forkReplay4FromCore main qb i cf first

/-- Four executions forked at one selected oracle position (DESIGN §U5b;
`fs.challenge-preimage`, `tipp-mipp.gipa`).

The result function is indexed in execution order: index `0` is the logged
first run and indices `1`, `2`, and `3` are replays from its trace. -/
noncomputable def forkReplay4 [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option (Fin 4 → α)) :=
  finishForkReplay4 <$> forkReplay4Core main qb i cf

/-- With one exact canonical run fixed, the three replay attempts preserve
the finisher's successful paths under selector refinement. -/
private theorem forkReplay4FromCore_finishedRefines
    [spec.DecidableEq]
    (left right : OracleComp spec α)
    (qb : ι → Nat)
    (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (first : α × QueryLog spec)
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (refines : OracleSelectorRefines cf left right) :
    OracleFinishedRefines
      (finishForkReplay4 (spec := spec) (α := α) (i := i))
      (forkReplay4FromCore left qb i cf first)
      (forkReplay4FromCore right qb i cf first) := by
  rcases hselector : cf first.1 with _ | slot
  · simpa [forkReplay4FromCore, hselector] using
      (oracleFinishedRefines_refl
        (finishForkReplay4
          (spec := spec) (α := α) (i := i))
        (pure (first, none, none, none)))
  · rcases hlogged :
      QueryLog.getQueryValue? first.2 i (slot : Nat) with _ | logged
    · simpa [forkReplay4FromCore, hselector, hlogged] using
        (oracleFinishedRefines_refl
          (finishForkReplay4
            (spec := spec) (α := α) (i := i))
          (pure (first, none, none, none)))
    · simpa [forkReplay4FromCore, hselector, hlogged] using
        (forkReplay4Trials_finishedRefines
          left right qb i cf first slot logged refines)

/-- The complete raw four-way replay core preserves every successful
selector-visible path of a replay-contextually refined source computation. -/
private theorem forkReplay4Core_finishedRefines
    [spec.DecidableEq]
    (left right : OracleComp spec α)
    (qb : ι → Nat)
    (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (refines : OracleSelectorRefines cf left right) :
    OracleFinishedRefines
      (finishForkReplay4 (spec := spec) (α := α) (i := i))
      (forkReplay4Core left qb i cf)
      (forkReplay4Core right qb i cf) := by
  have hfirst :
      OracleFailClosedRefines
        (loggedOutputFails (selectorFails cf))
        (loggedOutputsMatch (selectorMatches cf))
        (OracleComp.replayFirstRun left)
        (OracleComp.replayFirstRun right) :=
    OracleFailClosedRefines.replayFirstRun refines
  unfold forkReplay4Core
  refine OracleFailClosedRefines.bind hfirst
    (fun first => forkReplay4FromCore left qb i cf first)
    (fun first => forkReplay4FromCore right qb i cf first)
    ?_ ?_
  · intro first hfailure
    have hselector : cf first.1 = none := by
      simpa [loggedOutputFails, selectorFails] using hfailure
    simp only [forkReplay4FromCore, hselector]
    exact OracleAllOutputs.ofPure (by
      simp [finishFails, finishForkReplay4])
  · intro leftFirst rightFirst hmatch
    change
      selectorMatches cf leftFirst.1 rightFirst.1 ∧
        leftFirst.2 = rightFirst.2 at hmatch
    have houtput : leftFirst.1 = rightFirst.1 :=
      hmatch.1.1
    have hlog : leftFirst.2 = rightFirst.2 :=
      hmatch.2
    have hfirstEqual : leftFirst = rightFirst := by
      cases leftFirst
      cases rightFirst
      simp_all
    subst rightFirst
    exact forkReplay4FromCore_finishedRefines
      left right qb i cf leftFirst refines

/-- Generic replay-contextual monotonicity of the four-way fork.

The premise is operational: left abort branches may have arbitrary failed-path
query suffixes, while every selector-visible left path must have the exact
right query tree.  No cryptographic assumption is involved. -/
theorem forkReplay4_selectorRefines
    [spec.DecidableEq]
    (left right : OracleComp spec α)
    (qb : ι → Nat)
    (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (refines : OracleSelectorRefines cf left right) :
    OracleOptionSuccessRefines
      (forkReplay4 left qb i cf)
      (forkReplay4 right qb i cf) := by
  unfold forkReplay4
  exact
    (forkReplay4Core_finishedRefines
      left right qb i cf refines).finish

private lemma checkedReplay_support_props [spec.DecidableEq] [IsUniformSpec spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (trace : QueryLog spec)
    (s : Fin (qb i + 1)) (replacement : spec.Range i)
    {z : α × ReplayForkState spec i}
    (h : some z ∈ support (checkedReplay main qb i cf trace s replacement)) :
    z ∈ support (replayRunWithTraceValue main i trace ↑s replacement) ∧
      z.2.mismatch = false ∧ z.2.forkConsumed = true ∧ cf z.1 = some s := by
  simp only [checkedReplay] at h
  rw [mem_support_bind_iff] at h
  obtain ⟨z', hz', h⟩ := h
  split_ifs at h with hbad hcf
  · simp at h
  · rw [mem_support_pure_iff] at h
    have hz : z' = z := Option.some.inj h.symm
    subst z'
    have hbad' : (z.2.mismatch || !z.2.forkConsumed) = false :=
      Bool.not_eq_true _ |>.mp hbad
    have hmismatch : z.2.mismatch = false := (Bool.or_eq_false_iff.mp hbad').1
    have hfork : z.2.forkConsumed = true := by
      have hn := (Bool.or_eq_false_iff.mp hbad').2
      cases hfc : z.2.forkConsumed <;> simp [hfc] at hn ⊢
    exact ⟨hz', hmismatch, hfork, hcf⟩
  · simp at h

private lemma replayTrial_support_props [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (trace : QueryLog spec)
    (s : Fin (qb i + 1)) (logged replacement : spec.Range i)
    {z : α × ReplayForkState spec i}
    (h : some (replacement, z) ∈ support (replayTrial main qb i cf trace s logged)) :
    replacement ≠ logged ∧
      z ∈ support (replayRunWithTraceValue main i trace ↑s replacement) ∧
      z.2.mismatch = false ∧ z.2.forkConsumed = true ∧ cf z.1 = some s := by
  simp only [replayTrial, replayTrialWithReplacement] at h
  rw [mem_support_bind_iff] at h
  obtain ⟨u, -, h⟩ := h
  split_ifs at h with heq
  · simp at h
  · rw [mem_support_bind_iff] at h
    obtain ⟨z?, hz?, h⟩ := h
    rcases z? with _ | z'
    · simp at h
    · rw [mem_support_pure_iff] at h
      obtain ⟨rfl, rfl⟩ := Prod.mk.inj (Option.some.inj h.symm)
      exact ⟨heq, checkedReplay_support_props main qb i cf trace s u hz?⟩

/-- A successful fixed-root fork yields four supported canonical runs with a
common selected slot, distinct answers, and a positive common prefix (DESIGN
§U5c; `tipp-mipp.gipa`). -/
theorem forkReplay4From_support_props [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (first : α × QueryLog spec)
    (hfirst : first ∈ support (replayFirstRun main))
    {runs : Fin 4 → α × QueryLog spec}
    (h : some runs ∈ support (forkReplay4From main qb i cf first)) :
    ∃ (s : Fin (qb i + 1)) (answers : Fin 4 → spec.Range i)
        (cursor slotPos : Nat),
      runs 0 = first ∧
      (∀ k, runs k ∈ support (replayFirstRun main)) ∧
      (∀ k, cf (runs k).1 = some s) ∧
      Function.Injective answers ∧
      (∀ k, QueryLog.getQueryValue? (runs k).2 i ↑s = some (answers k)) ∧
      0 < cursor ∧
      (∀ a b n, n < cursor →
        QueryLog.inputAt? (runs a).2 n = QueryLog.inputAt? (runs b).2 n) ∧
      slotPos < cursor ∧
      (∀ k, QueryLog.inputAt? (runs k).2 slotPos = some i) ∧
      (∀ k, (QueryLog.getQ ((runs k).2.take slotPos) (· = i)).length = (s : Nat)) ∧
      (∀ a b n, n < slotPos → (runs a).2[n]? = (runs b).2[n]?) := by
  simp only [forkReplay4From, support_map, Set.mem_image] at h
  obtain ⟨core, hcore, hout⟩ := h
  simp only [forkReplay4FromCore] at hcore
  rcases hcf₀ : cf first.1 with _ | s
  · simp only [hcf₀, mem_support_pure_iff] at hcore
    subst core
    simp [finishForkReplay4From] at hout
  · simp only [hcf₀] at hcore
    rcases hq₀ : QueryLog.getQueryValue? first.2 i ↑s with _ | u₀
    · simp only [hq₀, mem_support_pure_iff] at hcore
      subst core
      simp [finishForkReplay4From] at hout
    · simp only [hq₀] at hcore
      rw [mem_support_bind_iff] at hcore
      obtain ⟨z₁?, hz₁?, hcore⟩ := hcore
      rw [mem_support_bind_iff] at hcore
      obtain ⟨z₂?, hz₂?, hcore⟩ := hcore
      rw [mem_support_bind_iff] at hcore
      obtain ⟨z₃?, hz₃?, hcore⟩ := hcore
      rw [mem_support_pure_iff] at hcore
      subst core
      rcases z₁? with _ | ⟨u₁, z₁⟩
      · simp [finishForkReplay4From] at hout
      · rcases z₂? with _ | ⟨u₂, z₂⟩
        · simp [finishForkReplay4From] at hout
        · rcases z₃? with _ | ⟨u₃, z₃⟩
          · simp [finishForkReplay4From] at hout
          · simp only [finishForkReplay4From] at hout
            split_ifs at hout with hu₂₁ hu₃₁ hu₃₂
            have hruns : runs = ![first, (z₁.1, z₁.2.observed),
                (z₂.1, z₂.2.observed), (z₃.1, z₃.2.observed)] :=
              Option.some.inj hout.symm
            subst runs
            rcases replayTrial_support_props main qb i cf first.2 s u₀ u₁ hz₁? with
                ⟨hu₁₀, hz₁, hm₁, hf₁, hcf₁⟩
            rcases replayTrial_support_props main qb i cf first.2 s u₀ u₂ hz₂? with
                ⟨hu₂₀, hz₂, hm₂, hf₂, hcf₂⟩
            rcases replayTrial_support_props main qb i cf first.2 s u₀ u₃ hz₃? with
                ⟨hu₃₀, hz₃, hm₃, hf₃, hcf₃⟩
            let answers : Fin 4 → spec.Range i := ![u₀, u₁, u₂, u₃]
            let cursor := min z₁.2.cursor (min z₂.2.cursor z₃.2.cursor)
            let slotPos := cursor - 1
            have hcursorPos : 0 < cursor := by
              have hp₁ := (replayRunWithTraceValue_forkConsumed_imp_last_input
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₁) hz₁ hf₁).1
              have hp₂ := (replayRunWithTraceValue_forkConsumed_imp_last_input
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₂) hz₂ hf₂).1
              have hp₃ := (replayRunWithTraceValue_forkConsumed_imp_last_input
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₃) hz₃ hf₃).1
              dsimp only [cursor]
              omega
            refine ⟨s, answers, cursor, slotPos, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
            · rfl
            · intro k
              fin_cases k
              · simpa using hfirst
              · simpa using
                  (replayRunWithTraceValue_mem_support_replayFirstRun
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₁) hz₁)
              · simpa using
                  (replayRunWithTraceValue_mem_support_replayFirstRun
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₂) hz₂)
              · simpa using
                  (replayRunWithTraceValue_mem_support_replayFirstRun
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₃) hz₃)
            · intro k
              fin_cases k <;> simp [hcf₀, hcf₁, hcf₂, hcf₃]
            · intro a b hab
              fin_cases a <;> fin_cases b <;> simp_all [answers]
            · intro k
              have hq₁ := replayRunWithTraceValue_getQueryValue?_observed_eq_replacement
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₁) hz₁ hf₁
              have hq₂ := replayRunWithTraceValue_getQueryValue?_observed_eq_replacement
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₂) hz₂ hf₂
              have hq₃ := replayRunWithTraceValue_getQueryValue?_observed_eq_replacement
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₃) hz₃ hf₃
              fin_cases k <;> simp [answers, hq₀, hq₁, hq₂, hq₃]
            · exact hcursorPos
            · intro a b n hn
              have hn₁ : n < z₁.2.cursor := lt_of_lt_of_le hn (min_le_left _ _)
              have hn₂ : n < z₂.2.cursor :=
                lt_of_lt_of_le hn (Nat.le_trans (min_le_right _ _) (min_le_left _ _))
              have hn₃ : n < z₃.2.cursor :=
                lt_of_lt_of_le hn (Nat.le_trans (min_le_right _ _) (min_le_right _ _))
              have hp₁ := replayRunWithTraceValue_prefix_input_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₁) hz₁ hn₁
              have hp₂ := replayRunWithTraceValue_prefix_input_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₂) hz₂ hn₂
              have hp₃ := replayRunWithTraceValue_prefix_input_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₃) hz₃ hn₃
              have ht₁ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₁) hz₁
              have ht₂ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₂) hz₂
              have ht₃ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₃) hz₃
              rw [ht₁] at hp₁
              rw [ht₂] at hp₂
              rw [ht₃] at hp₃
              fin_cases a <;> fin_cases b <;> simp_all
            · dsimp only [slotPos]
              omega
            · intro k
              have hp₁ := replayRunWithTraceValue_forkConsumed_imp_last_input
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₁) hz₁ hf₁
              have hp₂ := replayRunWithTraceValue_forkConsumed_imp_last_input
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₂) hz₂ hf₂
              have hp₃ := replayRunWithTraceValue_forkConsumed_imp_last_input
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₃) hz₃ hf₃
              have ht₁ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₁) hz₁
              have ht₂ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₂) hz₂
              have ht₃ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₃) hz₃
              rw [ht₁] at hp₁
              rw [ht₂] at hp₂
              rw [ht₃] at hp₃
              have hc : cursor = z₁.2.cursor ∨ cursor = z₂.2.cursor ∨
                  cursor = z₃.2.cursor := by
                simp only [cursor]
                omega
              rcases hc with hc | hc | hc
              · have hbase : QueryLog.inputAt? first.2 slotPos = some i := by
                  simpa [slotPos, hc] using hp₁.2.1
                have ho₁ : QueryLog.inputAt? z₁.2.observed slotPos = some i :=
                  (replayRunWithTraceValue_prefix_input_eq
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₁) hz₁ (by dsimp only [slotPos, cursor]; omega)).trans
                    (by rw [ht₁]; exact hbase)
                have ho₂ : QueryLog.inputAt? z₂.2.observed slotPos = some i :=
                  (replayRunWithTraceValue_prefix_input_eq
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₂) hz₂ (by dsimp only [slotPos, cursor]; omega)).trans
                    (by rw [ht₂]; exact hbase)
                have ho₃ : QueryLog.inputAt? z₃.2.observed slotPos = some i :=
                  (replayRunWithTraceValue_prefix_input_eq
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₃) hz₃ (by dsimp only [slotPos, cursor]; omega)).trans
                    (by rw [ht₃]; exact hbase)
                fin_cases k <;> simp_all
              · have hbase : QueryLog.inputAt? first.2 slotPos = some i := by
                  simpa [slotPos, hc] using hp₂.2.1
                have ho₁ : QueryLog.inputAt? z₁.2.observed slotPos = some i :=
                  (replayRunWithTraceValue_prefix_input_eq
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₁) hz₁ (by dsimp only [slotPos, cursor]; omega)).trans
                    (by rw [ht₁]; exact hbase)
                have ho₂ : QueryLog.inputAt? z₂.2.observed slotPos = some i :=
                  (replayRunWithTraceValue_prefix_input_eq
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₂) hz₂ (by dsimp only [slotPos, cursor]; omega)).trans
                    (by rw [ht₂]; exact hbase)
                have ho₃ : QueryLog.inputAt? z₃.2.observed slotPos = some i :=
                  (replayRunWithTraceValue_prefix_input_eq
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₃) hz₃ (by dsimp only [slotPos, cursor]; omega)).trans
                    (by rw [ht₃]; exact hbase)
                fin_cases k <;> simp_all
              · have hbase : QueryLog.inputAt? first.2 slotPos = some i := by
                  simpa [slotPos, hc] using hp₃.2.1
                have ho₁ : QueryLog.inputAt? z₁.2.observed slotPos = some i :=
                  (replayRunWithTraceValue_prefix_input_eq
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₁) hz₁ (by dsimp only [slotPos, cursor]; omega)).trans
                    (by rw [ht₁]; exact hbase)
                have ho₂ : QueryLog.inputAt? z₂.2.observed slotPos = some i :=
                  (replayRunWithTraceValue_prefix_input_eq
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₂) hz₂ (by dsimp only [slotPos, cursor]; omega)).trans
                    (by rw [ht₂]; exact hbase)
                have ho₃ : QueryLog.inputAt? z₃.2.observed slotPos = some i :=
                  (replayRunWithTraceValue_prefix_input_eq
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₃) hz₃ (by dsimp only [slotPos, cursor]; omega)).trans
                    (by rw [ht₃]; exact hbase)
                fin_cases k <;> simp_all
            · have ht₁ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₁) hz₁
              have ht₂ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₂) hz₂
              have ht₃ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₃) hz₃
              have htake₁ : z₁.2.observed.take slotPos = first.2.take slotPos := by
                apply take_eq_of_getElem?_eq_below
                intro n hn
                have hp := replayRunWithTraceValue_prefix_getElem?_eq
                  (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                  (replacement := u₁) hz₁ (by
                    simpa [hf₁] using (show n < z₁.2.cursor - 1 by
                      dsimp only [slotPos, cursor] at hn
                      omega))
                rwa [ht₁] at hp
              have htake₂ : z₂.2.observed.take slotPos = first.2.take slotPos := by
                apply take_eq_of_getElem?_eq_below
                intro n hn
                have hp := replayRunWithTraceValue_prefix_getElem?_eq
                  (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                  (replacement := u₂) hz₂ (by
                    simpa [hf₂] using (show n < z₂.2.cursor - 1 by
                      dsimp only [slotPos, cursor] at hn
                      omega))
                rwa [ht₂] at hp
              have htake₃ : z₃.2.observed.take slotPos = first.2.take slotPos := by
                apply take_eq_of_getElem?_eq_below
                intro n hn
                have hp := replayRunWithTraceValue_prefix_getElem?_eq
                  (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                  (replacement := u₃) hz₃ (by
                    simpa [hf₃] using (show n < z₃.2.cursor - 1 by
                      dsimp only [slotPos, cursor] at hn
                      omega))
                rwa [ht₃] at hp
              have hc : cursor = z₁.2.cursor ∨ cursor = z₂.2.cursor ∨
                  cursor = z₃.2.cursor := by
                simp only [cursor]
                omega
              have hbase :
                  (QueryLog.getQ (first.2.take slotPos) (· = i)).length = (s : Nat) := by
                rcases hc with hc | hc | hc
                · have hcount := replayRunWithTraceValue_forkConsumed_imp_prefix_count
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₁) hz₁ hf₁
                  rw [replayRunWithTraceValue_forkQuery_eq
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₁) hz₁] at hcount
                  rw [← htake₁]
                  simpa [slotPos, hc] using hcount
                · have hcount := replayRunWithTraceValue_forkConsumed_imp_prefix_count
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₂) hz₂ hf₂
                  rw [replayRunWithTraceValue_forkQuery_eq
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₂) hz₂] at hcount
                  rw [← htake₂]
                  simpa [slotPos, hc] using hcount
                · have hcount := replayRunWithTraceValue_forkConsumed_imp_prefix_count
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₃) hz₃ hf₃
                  rw [replayRunWithTraceValue_forkQuery_eq
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₃) hz₃] at hcount
                  rw [← htake₃]
                  simpa [slotPos, hc] using hcount
              intro k
              fin_cases k
              · simpa using hbase
              · simpa [htake₁] using hbase
              · simpa [htake₂] using hbase
              · simpa [htake₃] using hbase
            · intro a b n hn
              have hn₁ : n < z₁.2.cursor - 1 := by
                dsimp only [slotPos, cursor] at hn
                omega
              have hn₂ : n < z₂.2.cursor - 1 := by
                dsimp only [slotPos, cursor] at hn
                omega
              have hn₃ : n < z₃.2.cursor - 1 := by
                dsimp only [slotPos, cursor] at hn
                omega
              have hp₁ := replayRunWithTraceValue_prefix_getElem?_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₁) hz₁ (by simpa [hf₁] using hn₁)
              have hp₂ := replayRunWithTraceValue_prefix_getElem?_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₂) hz₂ (by simpa [hf₂] using hn₂)
              have hp₃ := replayRunWithTraceValue_prefix_getElem?_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₃) hz₃ (by simpa [hf₃] using hn₃)
              have ht₁ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₁) hz₁
              have ht₂ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₂) hz₂
              have ht₃ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₃) hz₃
              rw [ht₁] at hp₁
              rw [ht₂] at hp₂
              rw [ht₃] at hp₃
              fin_cases a <;> fin_cases b <;> simp_all

/-- A successful four-way fork retains the full logged-run facts proved by the
fixed-root replay theorem, including the fork position, filtered rank, and
value prefix. -/
theorem forkReplay4_support_props_full [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    {xs : Fin 4 → α}
    (h : some xs ∈ support (forkReplay4 main qb i cf)) :
    ∃ (runs : Fin 4 → α × QueryLog spec) (s : Fin (qb i + 1))
        (answers : Fin 4 → spec.Range i) (cursor slotPos : Nat),
      (∀ k, xs k = (runs k).1) ∧
      (∀ k, runs k ∈ support (replayFirstRun main)) ∧
      (∀ k, cf (runs k).1 = some s) ∧
      Function.Injective answers ∧
      (∀ k, QueryLog.getQueryValue? (runs k).2 i ↑s = some (answers k)) ∧
      0 < cursor ∧
      (∀ a b n, n < cursor →
        QueryLog.inputAt? (runs a).2 n = QueryLog.inputAt? (runs b).2 n) ∧
      slotPos < cursor ∧
      (∀ k, QueryLog.inputAt? (runs k).2 slotPos = some i) ∧
      (∀ k, (QueryLog.getQ ((runs k).2.take slotPos) (· = i)).length = (s : Nat)) ∧
      (∀ a b n, n < slotPos → (runs a).2[n]? = (runs b).2[n]?) := by
  simp only [forkReplay4, support_map, Set.mem_image] at h
  obtain ⟨core, hcore, hout⟩ := h
  simp only [forkReplay4Core] at hcore
  rw [mem_support_bind_iff] at hcore
  obtain ⟨first, hfirst, hcore⟩ := hcore
  rcases core with ⟨first', z₁?, z₂?, z₃?⟩
  rcases z₁? with _ | ⟨u₁, z₁⟩
  · simp [finishForkReplay4] at hout
  rcases z₂? with _ | ⟨u₂, z₂⟩
  · simp [finishForkReplay4] at hout
  rcases z₃? with _ | ⟨u₃, z₃⟩
  · simp [finishForkReplay4] at hout
  simp only [finishForkReplay4] at hout
  split_ifs at hout with hu₂₁ hu₃₁ hu₃₂
  let runs : Fin 4 → α × QueryLog spec :=
    ![first', (z₁.1, z₁.2.observed), (z₂.1, z₂.2.observed),
      (z₃.1, z₃.2.observed)]
  have hxs : ∀ k, xs k = (runs k).1 := by
    have hxs' : xs = ![first'.1, z₁.1, z₂.1, z₃.1] := Option.some.inj hout.symm
    intro k
    rw [hxs']
    fin_cases k <;> rfl
  have hruns : some runs ∈ support (forkReplay4From main qb i cf first) := by
    simp only [forkReplay4From, support_map, Set.mem_image]
    refine ⟨(first', some (u₁, z₁), some (u₂, z₂), some (u₃, z₃)), hcore, ?_⟩
    simp [finishForkReplay4From, runs, hu₂₁, hu₃₁, hu₃₂]
  rcases forkReplay4From_support_props main qb i cf first hfirst hruns with
    ⟨s, answers, cursor, slotPos, hruns₀, hrunsSupport, hcf, hinjective,
      hanswers, hcursor, hprefix, hslotPos, hslotInput, hslotRank,
      hprefixValues⟩
  exact ⟨runs, s, answers, cursor, slotPos, hxs,
    hrunsSupport, hcf, hinjective, hanswers, hcursor, hprefix, hslotPos,
    hslotInput, hslotRank, hprefixValues⟩

private theorem forkReplay4FromCore_first_eq [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (first : α × QueryLog spec)
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    {core : (α × QueryLog spec) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i))}
    (h : core ∈ support (forkReplay4FromCore main qb i cf first)) :
    core.1 = first := by
  simp only [forkReplay4FromCore] at h
  split at h
  · have heq : core = (first, none, none, none) := by simpa using h
    simpa using congrArg Prod.fst heq
  · split at h
    · have heq : core = (first, none, none, none) := by simpa using h
      simpa using congrArg Prod.fst heq
    · rw [mem_support_bind_iff] at h
      obtain ⟨z₁, hz₁, h⟩ := h
      rw [mem_support_bind_iff] at h
      obtain ⟨z₂, hz₂, h⟩ := h
      rw [mem_support_bind_iff] at h
      obtain ⟨z₃, hz₃, h⟩ := h
      have heq : core = (first, z₁, z₂, z₃) := by simpa using h
      simpa using congrArg Prod.fst heq

/-- The canonical first execution of a successful four-way fork is a prefix of
the log produced by replaying the entire fork experiment. -/
theorem forkReplay4_firstRun_prefix_of_outerReplay
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    {xs : Fin 4 → α} {outerLog : QueryLog spec}
    (h : (some xs, outerLog) ∈ support
      (replayFirstRun (forkReplay4 main qb i cf))) :
    ∃ firstLog, (xs 0, firstLog) ∈ support (replayFirstRun main) ∧
      firstLog <+: outerLog := by
  change (some xs, outerLog) ∈ support
    (finishForkReplay4 <$> forkReplay4Core main qb i cf).withQueryLog at h
  rw [map_eq_pure_bind, OracleComp.withQueryLog_bind, mem_support_bind_iff] at h
  obtain ⟨⟨core, coreLog⟩, hcore, hfinish⟩ := h
  simp only [OracleComp.withQueryLog_pure, map_pure, mem_support_pure_iff] at hfinish
  have hfinishOutput : finishForkReplay4 core = some xs := by
    simpa using congrArg Prod.fst hfinish.symm
  have houterLog : coreLog = outerLog := by
    simpa using congrArg Prod.snd hfinish.symm
  simp only [forkReplay4Core, OracleComp.withQueryLog_bind,
    mem_support_bind_iff] at hcore
  obtain ⟨⟨first, prefixLog⟩, hfirst, hrest⟩ := hcore
  rw [support_map, Set.mem_image] at hrest
  obtain ⟨⟨core', restLog⟩, hcore', hout⟩ := hrest
  simp only [Prod.map_apply, id_eq, Prod.mk.injEq] at hout
  rcases hout with ⟨rfl, rfl⟩
  have hlogs := OracleComp.withQueryLog_self_log_eq main hfirst
  subst prefixLog
  have hcoreSupport : core' ∈ support (forkReplay4FromCore main qb i cf first) := by
    have hmapped : core' ∈ support
        (Prod.fst <$> replayFirstRun (forkReplay4FromCore main qb i cf first)) := by
      rw [support_map, Set.mem_image]
      exact ⟨(core', restLog), hcore', rfl⟩
    simpa only [fst_map_replayFirstRun] using hmapped
  have hfirstEq := forkReplay4FromCore_first_eq main qb i cf first hcoreSupport
  rcases core' with ⟨first', z₁?, z₂?, z₃?⟩
  rcases z₁? with _ | ⟨u₁, z₁⟩
  · simp [finishForkReplay4] at hfinishOutput
  rcases z₂? with _ | ⟨u₂, z₂⟩
  · simp [finishForkReplay4] at hfinishOutput
  rcases z₃? with _ | ⟨u₃, z₃⟩
  · simp [finishForkReplay4] at hfinishOutput
  simp only [finishForkReplay4] at hfinishOutput
  split_ifs at hfinishOutput with hu₂₁ hu₃₁ hu₃₂
  have hxs : xs = ![first'.1, z₁.1, z₂.1, z₃.1] :=
    Option.some.inj hfinishOutput.symm
  have hfirst' : first' = first := by simpa using hfirstEq
  subst first'
  have hfirstSupport : first ∈ support (replayFirstRun main) := by
    have hmapped : first ∈ support (Prod.fst <$> replayFirstRun (replayFirstRun main)) := by
      rw [support_map, Set.mem_image]
      exact ⟨(first, first.2), hfirst, rfl⟩
    simpa only [fst_map_replayFirstRun] using hmapped
  subst outerLog
  refine ⟨first.2, by simpa [hxs] using hfirstSupport, ⟨restLog, rfl⟩⟩

/-- A successful four-way fork supplies four accepting logged runs at one
selected slot, pairwise-distinct answers there, and a common interleaved query
prefix.  This is the qualitative `fs.challenge-preimage` boundary consumed by
the four children of `tipp-mipp.gipa` (DESIGN §U5b). -/
theorem forkReplay4_support_props [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    {xs : Fin 4 → α}
    (h : some xs ∈ support (forkReplay4 main qb i cf)) :
    ∃ (logs : Fin 4 → QueryLog spec) (s : Fin (qb i + 1))
        (answers : Fin 4 → spec.Range i) (cursor : Nat),
      (∀ k, (xs k, logs k) ∈ support (replayFirstRun main)) ∧
      (∀ k, cf (xs k) = some s) ∧
      Function.Injective answers ∧
      (∀ k, QueryLog.getQueryValue? (logs k) i ↑s = some (answers k)) ∧
      0 < cursor ∧
      (∀ a b n, n < cursor →
        QueryLog.inputAt? (logs a) n = QueryLog.inputAt? (logs b) n) := by
  simp only [forkReplay4, support_map, Set.mem_image] at h
  obtain ⟨core, hcore, hout⟩ := h
  simp only [forkReplay4Core] at hcore
  rw [mem_support_bind_iff] at hcore
  obtain ⟨first, hfirst, hcore⟩ := hcore
  simp only [forkReplay4FromCore] at hcore
  rcases hcf₀ : cf first.1 with _ | s
  · simp only [hcf₀, mem_support_pure_iff] at hcore
    subst core
    simp [finishForkReplay4] at hout
  · simp only [hcf₀] at hcore
    rcases hq₀ : QueryLog.getQueryValue? first.2 i ↑s with _ | u₀
    · simp only [hq₀, mem_support_pure_iff] at hcore
      subst core
      simp [finishForkReplay4] at hout
    · simp only [hq₀] at hcore
      rw [mem_support_bind_iff] at hcore
      obtain ⟨z₁?, hz₁?, hcore⟩ := hcore
      rw [mem_support_bind_iff] at hcore
      obtain ⟨z₂?, hz₂?, hcore⟩ := hcore
      rw [mem_support_bind_iff] at hcore
      obtain ⟨z₃?, hz₃?, hcore⟩ := hcore
      rw [mem_support_pure_iff] at hcore
      subst core
      rcases z₁? with _ | ⟨u₁, z₁⟩
      · simp [finishForkReplay4] at hout
      · rcases z₂? with _ | ⟨u₂, z₂⟩
        · simp [finishForkReplay4] at hout
        · rcases z₃? with _ | ⟨u₃, z₃⟩
          · simp [finishForkReplay4] at hout
          · simp only [finishForkReplay4] at hout
            split_ifs at hout with hu₂₁ hu₃₁ hu₃₂
            have hxs : xs = ![first.1, z₁.1, z₂.1, z₃.1] := Option.some.inj hout.symm
            subst xs
            rcases replayTrial_support_props main qb i cf first.2 s u₀ u₁ hz₁? with
                ⟨hu₁₀, hz₁, hm₁, hf₁, hcf₁⟩
            rcases replayTrial_support_props main qb i cf first.2 s u₀ u₂ hz₂? with
                ⟨hu₂₀, hz₂, hm₂, hf₂, hcf₂⟩
            rcases replayTrial_support_props main qb i cf first.2 s u₀ u₃ hz₃? with
                ⟨hu₃₀, hz₃, hm₃, hf₃, hcf₃⟩
            let logs : Fin 4 → QueryLog spec :=
                ![first.2, z₁.2.observed, z₂.2.observed, z₃.2.observed]
            let answers : Fin 4 → spec.Range i := ![u₀, u₁, u₂, u₃]
            let cursor := min z₁.2.cursor (min z₂.2.cursor z₃.2.cursor)
            refine ⟨logs, s, answers, cursor, ?_, ?_, ?_, ?_, ?_, ?_⟩
            · intro k
              fin_cases k
              · simpa [logs] using hfirst
              · simpa [logs] using
                  (replayRunWithTraceValue_mem_support_replayFirstRun
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₁) hz₁)
              · simpa [logs] using
                  (replayRunWithTraceValue_mem_support_replayFirstRun
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₂) hz₂)
              · simpa [logs] using
                  (replayRunWithTraceValue_mem_support_replayFirstRun
                    (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                    (replacement := u₃) hz₃)
            · intro k
              fin_cases k <;> simp [hcf₀, hcf₁, hcf₂, hcf₃]
            · intro a b hab
              fin_cases a <;> fin_cases b <;> simp_all [answers]
            · intro k
              have hq₁ := replayRunWithTraceValue_getQueryValue?_observed_eq_replacement
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₁) hz₁ hf₁
              have hq₂ := replayRunWithTraceValue_getQueryValue?_observed_eq_replacement
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₂) hz₂ hf₂
              have hq₃ := replayRunWithTraceValue_getQueryValue?_observed_eq_replacement
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₃) hz₃ hf₃
              fin_cases k <;> simp [logs, answers, hq₀, hq₁, hq₂, hq₃]
            · have hp₁ := (replayRunWithTraceValue_forkConsumed_imp_last_input
                  (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                  (replacement := u₁) hz₁ hf₁).1
              have hp₂ := (replayRunWithTraceValue_forkConsumed_imp_last_input
                  (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                  (replacement := u₂) hz₂ hf₂).1
              have hp₃ := (replayRunWithTraceValue_forkConsumed_imp_last_input
                  (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                  (replacement := u₃) hz₃ hf₃).1
              dsimp only [cursor]
              omega
            · intro a b n hn
              have hn₁ : n < z₁.2.cursor := lt_of_lt_of_le hn (min_le_left _ _)
              have hn₂ : n < z₂.2.cursor :=
                lt_of_lt_of_le hn (Nat.le_trans (min_le_right _ _) (min_le_left _ _))
              have hn₃ : n < z₃.2.cursor :=
                lt_of_lt_of_le hn (Nat.le_trans (min_le_right _ _) (min_le_right _ _))
              have hp₁ := replayRunWithTraceValue_prefix_input_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₁) hz₁ hn₁
              have hp₂ := replayRunWithTraceValue_prefix_input_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₂) hz₂ hn₂
              have hp₃ := replayRunWithTraceValue_prefix_input_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₃) hz₃ hn₃
              have ht₁ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₁) hz₁
              have ht₂ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₂) hz₂
              have ht₃ := replayRunWithTraceValue_trace_eq
                (main := main) (i := i) (trace := first.2) (forkQuery := ↑s)
                (replacement := u₃) hz₃
              rw [ht₁] at hp₁
              rw [ht₂] at hp₂
              rw [ht₃] at hp₃
              fin_cases a <;> fin_cases b <;> simp_all [logs]

/-- All three raw replay attempts succeeded. -/
private def forkReplay4RawSuccess {i : ι} :
    ((α × QueryLog spec) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i))) → Prop
  | (_, some _, some _, some _) => True
  | _ => False

/-- A collision among the three successful replay replacement answers. -/
private def forkReplay4RawCollision {i : ι} :
    ((α × QueryLog spec) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i)) ×
      Option (spec.Range i × (α × ReplayForkState spec i))) → Prop
  | (_, some (u₁, _), some (u₂, _), some (u₃, _)) =>
      u₂ = u₁ ∨ u₃ = u₁ ∨ u₃ = u₂
  | _ => False

/-- One complete conditional replay trial rooted at a fixed canonical run. -/
private def replayTrialFromFirst [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (first : α × QueryLog spec)
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option (spec.Range i × (α × ReplayForkState spec i))) :=
  match cf first.1 with
  | none => pure none
  | some s =>
      match QueryLog.getQueryValue? first.2 i ↑s with
      | none => pure none
      | some logged => replayTrial main qb i cf first.2 s logged

/-- Conditional success probability of one replay trial given its canonical
first run. -/
private noncomputable def replayTrialSuccessProbability [spec.DecidableEq]
    [IsUniformSpec spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (first : α × QueryLog spec)
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] : ℝ≥0∞ :=
  Pr[fun z => z.isSome | replayTrialFromFirst main qb i cf first]

/-- Run a randomized continuation after a successful replay child. -/
noncomputable def replayContinueFromFirst [spec.DecidableEq]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (first : α × QueryLog spec)
    (next : (α × QueryLog spec) → OracleComp spec (Option β))
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option β) := do
  let child? ← replayTrialFromFirst main qb i cf first
  match child? with
  | none => pure none
  | some (_, child) => next (child.1, child.2.observed)

/-- Conditional success probability of one replay child followed by `next`. -/
noncomputable def replayContinuationSuccessProbability [spec.DecidableEq]
    [IsUniformSpec spec]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (first : α × QueryLog spec)
    (next : (α × QueryLog spec) → OracleComp spec (Option β))
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] : ℝ≥0∞ :=
  Pr[fun z => z.isSome | replayContinueFromFirst main qb i cf first next]

/-- The canonical child and one replay child, each followed independently by
the same continuation. -/
noncomputable def forkReplayPairContinue [spec.DecidableEq]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (next : (α × QueryLog spec) → OracleComp spec (Option β))
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option β × Option β) := do
  let first ← replayFirstRun main
  let canonical? ← next first
  let replay? ← replayContinueFromFirst main qb i cf first next
  pure (canonical?, replay?)

/-- Raw four-child continuation experiment before replacement-collision
filtering. Child zero is the canonical run; the other three are independent
replays from its selected slot. -/
noncomputable def forkReplay4ContinueRaw [spec.DecidableEq]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (next : (α × QueryLog spec) → OracleComp spec (Option β))
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option β × Option β × Option β × Option β) := do
  let first ← replayFirstRun main
  let canonical? ← next first
  let replay₁? ← replayContinueFromFirst main qb i cf first next
  let replay₂? ← replayContinueFromFirst main qb i cf first next
  let replay₃? ← replayContinueFromFirst main qb i cf first next
  pure (canonical?, replay₁?, replay₂?, replay₃?)

/-- Fork four collision-free logged children from a fixed canonical run and
run `next` independently on all four, including child zero. -/
noncomputable def forkReplay4ContinueFrom [spec.DecidableEq]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (first : α × QueryLog spec)
    (next : (α × QueryLog spec) → OracleComp spec (Option β))
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option (Fin 4 → β)) := do
  let runs? ← forkReplay4From main qb i cf first
  match runs? with
  | none => pure none
  | some runs =>
      let z₀? ← next (runs 0)
      let z₁? ← next (runs 1)
      let z₂? ← next (runs 2)
      let z₃? ← next (runs 3)
      match z₀?, z₁?, z₂?, z₃? with
      | some z₀, some z₁, some z₂, some z₃ => pure (some ![z₀, z₁, z₂, z₃])
      | _, _, _, _ => pure none

/-- VCVio's pair-fork trial and `replayTrial` have the same success event. -/
private lemma probEvent_pairTrial_eq_replayTrialSuccessProbability
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (first : α × QueryLog spec) :
    Pr[fun z : Option (α × α) => z.isSome |
        match cf first.1 with
        | none => pure none
        | some _ => do
            let u ← liftComp ($ᵗ spec.Range i) spec
            forkReplayWithTraceValue main qb i cf first u] =
      replayTrialSuccessProbability main qb i cf first := by
  classical
  unfold replayTrialSuccessProbability replayTrialFromFirst
  rcases hcf : cf first.1 with _ | s
  · simp
  · rcases hlogged : QueryLog.getQueryValue? first.2 i ↑s with _ | logged
    · simp [hcf, hlogged, forkReplayWithTraceValue]
    · simp only [hlogged, replayTrial, replayTrialWithReplacement]
      rw [probEvent_bind_eq_tsum, probEvent_bind_eq_tsum]
      refine tsum_congr fun u => ?_
      congr 1
      by_cases hu : u = logged
      · have hul : logged = u := hu.symm
        simp only [forkReplayWithTraceValue, hcf, hlogged, if_pos hul, if_pos hu]
        simp
      · have hul : logged ≠ u := Ne.symm hu
        simp only [forkReplayWithTraceValue, hcf, hlogged, if_neg hul, if_neg hu,
          checkedReplay, bind_assoc]
        rw [probEvent_bind_eq_tsum, probEvent_bind_eq_tsum]
        refine tsum_congr fun z => ?_
        congr 1
        by_cases hbad : z.2.mismatch || !z.2.forkConsumed
        · simp [hbad]
        · by_cases hz : cf z.1 = some s <;> simp [hbad, hz]

/-- Pair marginal expressed through the shared conditional trial probability. -/
private lemma probEvent_isSome_forkReplay_eq_tsum
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) :
    Pr[fun r : Option (α × α) => r.isSome | forkReplay main qb i cf] =
      ∑' first, Pr[= first | replayFirstRun main] *
        replayTrialSuccessProbability main qb i cf first := by
  rw [forkReplay, probEvent_bind_eq_tsum]
  refine tsum_congr fun first => ?_
  congr 1
  exact probEvent_pairTrial_eq_replayTrialSuccessProbability main qb i cf first

/-- Three independent copies of an option-valued computation all succeed with
the cube of its one-copy success probability. -/
private lemma probEvent_three_isSome
    [IsUniformSpec spec] {δ : Type} (d : δ) (mx : OracleComp spec (Option α)) :
    Pr[fun z : δ × Option α × Option α × Option α =>
        z.2.1.isSome ∧ z.2.2.1.isSome ∧ z.2.2.2.isSome |
      do
        let z₁ ← mx
        let z₂ ← mx
        let z₃ ← mx
        pure (d, z₁, z₂, z₃)] =
      Pr[fun z => z.isSome | mx] ^ 3 := by
  classical
  let pair : OracleComp spec (Option α × Option α) :=
    (fun x y => (x, y)) <$> mx <*> mx
  have hpair :
      Pr[fun z : Option α × Option α => z.1.isSome ∧ z.2.isSome | pair] =
        Pr[fun z => z.isSome | mx] * Pr[fun z => z.isSome | mx] := by
    apply probEvent_seq_map_eq_mul
    intro x _ y _
    rfl
  have htriple :
      Pr[fun z : δ × Option α × Option α × Option α =>
          z.2.1.isSome ∧ z.2.2.1.isSome ∧ z.2.2.2.isSome |
        (fun xy z => (d, xy.1, xy.2, z)) <$> pair <*> mx] =
        Pr[fun z : Option α × Option α => z.1.isSome ∧ z.2.isSome | pair] *
          Pr[fun z => z.isSome | mx] := by
    apply probEvent_seq_map_eq_mul
    intro xy _ z _
    tauto
  rw [show (do
        let z₁ ← mx
        let z₂ ← mx
        let z₃ ← mx
        pure (d, z₁, z₂, z₃)) =
      (fun xy z => (d, xy.1, xy.2, z)) <$> pair <*> mx by
        simp [pair, seq_eq_bind_map]]
  simpa [hpair, pow_succ] using htriple

/-- Weighted pair marginal for an arbitrary randomized continuation. -/
theorem probEvent_forkReplayPairContinue_eq_tsum
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (next : (α × QueryLog spec) → OracleComp spec (Option β)) :
    Pr[fun z : Option β × Option β => z.1.isSome ∧ z.2.isSome |
        forkReplayPairContinue main qb i cf next] =
      ∑' first, Pr[= first | replayFirstRun main] *
        (Pr[fun z => z.isSome | next first] *
          replayContinuationSuccessProbability main qb i cf first next) := by
  classical
  rw [forkReplayPairContinue, probEvent_bind_eq_tsum]
  refine tsum_congr fun first => ?_
  congr 1
  let replay := replayContinueFromFirst main qb i cf first next
  have hprod := probEvent_seq_map_eq_mul
    (mx := next first) (my := replay) (f := fun x y => (x, y))
    (p := fun z : Option β × Option β => z.1.isSome ∧ z.2.isSome)
    (q1 := fun x : Option β => x.isSome) (q2 := fun y : Option β => y.isSome)
    (by intro x _ y _; rfl)
  rw [show (do
      let canonical? ← next first
      let replay? ← replay
      pure (canonical?, replay?)) =
      (fun x y => (x, y)) <$> next first <*> replay by simp [seq_eq_bind_map]]
  simpa [replay, replayContinuationSuccessProbability] using hprod

/-- Weighted raw-four marginal for an arbitrary randomized continuation. The
canonical continuation contributes one factor and each replay continuation
contributes an independent factor. -/
theorem probEvent_forkReplay4ContinueRaw_eq_tsum
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (next : (α × QueryLog spec) → OracleComp spec (Option β)) :
    Pr[fun z : Option β × Option β × Option β × Option β =>
          z.1.isSome ∧ z.2.1.isSome ∧ z.2.2.1.isSome ∧ z.2.2.2.isSome |
        forkReplay4ContinueRaw main qb i cf next] =
      ∑' first, Pr[= first | replayFirstRun main] *
        (Pr[fun z => z.isSome | next first] *
          (replayContinuationSuccessProbability main qb i cf first next) ^ 3) := by
  classical
  rw [forkReplay4ContinueRaw, probEvent_bind_eq_tsum]
  refine tsum_congr fun first => ?_
  congr 1
  let replay := replayContinueFromFirst main qb i cf first next
  let triple : OracleComp spec (Unit × Option β × Option β × Option β) := do
    let z₁ ← replay
    let z₂ ← replay
    let z₃ ← replay
    pure ((), z₁, z₂, z₃)
  have hthree :
      Pr[fun z : Unit × Option β × Option β × Option β =>
          z.2.1.isSome ∧ z.2.2.1.isSome ∧ z.2.2.2.isSome | triple] =
        Pr[fun z => z.isSome | replay] ^ 3 := by
    exact probEvent_three_isSome (spec := spec) () (mx := replay)
  have hprod := probEvent_seq_map_eq_mul
    (mx := next first) (my := triple)
    (f := fun x yz => (x, yz.2.1, yz.2.2.1, yz.2.2.2))
    (p := fun z : Option β × Option β × Option β × Option β =>
      z.1.isSome ∧ z.2.1.isSome ∧ z.2.2.1.isSome ∧ z.2.2.2.isSome)
    (q1 := fun x : Option β => x.isSome)
    (q2 := fun yz : Unit × Option β × Option β × Option β =>
      yz.2.1.isSome ∧ yz.2.2.1.isSome ∧ yz.2.2.2.isSome)
    (by intro x _ yz _; rfl)
  rw [show (do
      let canonical? ← next first
      let replay₁? ← replay
      let replay₂? ← replay
      let replay₃? ← replay
      pure (canonical?, replay₁?, replay₂?, replay₃?)) =
      (fun x yz => (x, yz.2.1, yz.2.2.1, yz.2.2.2)) <$> next first <*> triple by
        simp [triple, seq_eq_bind_map]]
  rw [hprod, hthree]
  rfl

/-- Triple marginal expressed through the shared conditional trial probability. -/
private lemma probEvent_forkReplay4RawSuccess_eq_tsum
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) :
    Pr[forkReplay4RawSuccess | forkReplay4Core main qb i cf] =
      ∑' first, Pr[= first | replayFirstRun main] *
        (replayTrialSuccessProbability main qb i cf first) ^ 3 := by
  rw [forkReplay4Core, probEvent_bind_eq_tsum]
  refine tsum_congr fun first => ?_
  congr 1
  rcases hcf : cf first.1 with _ | s
  · simp [forkReplay4FromCore, replayTrialSuccessProbability,
      replayTrialFromFirst, hcf, forkReplay4RawSuccess]
  · rcases hlogged : QueryLog.getQueryValue? first.2 i ↑s with _ | logged
    · simp [forkReplay4FromCore, replayTrialSuccessProbability,
        replayTrialFromFirst, hcf, hlogged, forkReplay4RawSuccess]
    · simp only [forkReplay4FromCore, hcf, hlogged,
        replayTrialSuccessProbability, replayTrialFromFirst]
      calc
        Pr[forkReplay4RawSuccess |
            do
              let z₁ ← replayTrial main qb i cf first.2 s logged
              let z₂ ← replayTrial main qb i cf first.2 s logged
              let z₃ ← replayTrial main qb i cf first.2 s logged
              pure (first, z₁, z₂, z₃)] =
            Pr[fun z => z.2.1.isSome ∧ z.2.2.1.isSome ∧ z.2.2.2.isSome |
              do
                let z₁ ← replayTrial main qb i cf first.2 s logged
                let z₂ ← replayTrial main qb i cf first.2 s logged
                let z₃ ← replayTrial main qb i cf first.2 s logged
                pure (first, z₁, z₂, z₃)] := by
                  apply probEvent_ext
                  rintro ⟨first', z₁?, z₂?, z₃?⟩ _
                  rcases z₁? with _ | z₁ <;> rcases z₂? with _ | z₂ <;>
                    rcases z₃? with _ | z₃ <;> simp [forkReplay4RawSuccess]
        _ = Pr[fun z => z.isSome |
              replayTrial main qb i cf first.2 s logged] ^ 3 :=
          probEvent_three_isSome
            (spec := spec) first
            (mx := replayTrial main qb i cf first.2 s logged)

/-- Two weighted Cauchy--Schwarz steps turn a first moment into a fourth
moment, which is bounded by the third moment when the variable is at most one. -/
private lemma pow_four_tsum_le_tsum_cube {δ : Type}
    (w p : δ → ℝ≥0∞) (hw : ∑' x, w x ≤ 1) (hp : ∀ x, p x ≤ 1) :
    (∑' x, w x * p x) ^ 4 ≤ ∑' x, w x * p x ^ 3 := by
  have hsq :
      (∑' x, w x * p x) ^ 2 ≤ ∑' x, w x * p x ^ 2 :=
    ENNReal.sq_tsum_le_tsum_sq w p hw
  have hsq₂ :
      (∑' x, w x * p x ^ 2) ^ 2 ≤ ∑' x, w x * (p x ^ 2) ^ 2 :=
    ENNReal.sq_tsum_le_tsum_sq w (fun x => p x ^ 2) hw
  calc
    (∑' x, w x * p x) ^ 4 = ((∑' x, w x * p x) ^ 2) ^ 2 := by ring
    _ ≤ (∑' x, w x * p x ^ 2) ^ 2 := by gcongr
    _ ≤ ∑' x, w x * (p x ^ 2) ^ 2 := hsq₂
    _ = ∑' x, w x * p x ^ 4 := by
      refine tsum_congr fun x => ?_
      ring
    _ ≤ ∑' x, w x * p x ^ 3 := by
      apply ENNReal.tsum_le_tsum
      intro x
      apply mul_le_mul' le_rfl
      calc
        p x ^ 4 = p x ^ 3 * p x := by ring
        _ ≤ p x ^ 3 * 1 := mul_le_mul' le_rfl (hp x)
        _ = p x ^ 3 := mul_one _

/-- The pair/Jensen chain for continuation weights. -/
theorem forkReplayPairContinue_pow_four_le_raw
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (next : (α × QueryLog spec) → OracleComp spec (Option β)) :
    Pr[fun z : Option β × Option β => z.1.isSome ∧ z.2.isSome |
        forkReplayPairContinue main qb i cf next] ^ 4 ≤
      Pr[fun z : Option β × Option β × Option β × Option β =>
          z.1.isSome ∧ z.2.1.isSome ∧ z.2.2.1.isSome ∧ z.2.2.2.isSome |
        forkReplay4ContinueRaw main qb i cf next] := by
  let w : α × QueryLog spec → ℝ≥0∞ :=
    fun first => Pr[= first | replayFirstRun main] *
      Pr[fun z => z.isSome | next first]
  let p : α × QueryLog spec → ℝ≥0∞ :=
    fun first => replayContinuationSuccessProbability main qb i cf first next
  have hw : ∑' first, w first ≤ 1 := by
    calc
      ∑' first, w first ≤ ∑' first, Pr[= first | replayFirstRun main] := by
        apply ENNReal.tsum_le_tsum
        intro first
        exact mul_le_of_le_one_right' probEvent_le_one
      _ ≤ 1 := tsum_probOutput_le_one
  have hp : ∀ first, p first ≤ 1 := fun _ => probEvent_le_one
  rw [probEvent_forkReplayPairContinue_eq_tsum main qb i cf next,
    probEvent_forkReplay4ContinueRaw_eq_tsum main qb i cf next]
  simpa [w, p, mul_assoc] using pow_four_tsum_le_tsum_cube w p hw hp

/-- One-level continuation bound once the weighted pair-fork estimate is
available. This isolates the pair-fork step from the four-child Jensen step. -/
theorem forkReplay4ContinueRaw_bound_of_pair
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (next : (α × QueryLog spec) → OracleComp spec (Option β))
    (acc : ℝ≥0∞)
    (hpair : acc * (acc / (qb i + 1) -
        (Fintype.card (spec.Range i) : ℝ≥0∞)⁻¹) ≤
      Pr[fun z : Option β × Option β => z.1.isSome ∧ z.2.isSome |
        forkReplayPairContinue main qb i cf next]) :
    (acc * (acc / (qb i + 1) -
        (Fintype.card (spec.Range i) : ℝ≥0∞)⁻¹)) ^ 4 ≤
      Pr[fun z : Option β × Option β × Option β × Option β =>
          z.1.isSome ∧ z.2.1.isSome ∧ z.2.2.1.isSome ∧ z.2.2.2.isSome |
        forkReplay4ContinueRaw main qb i cf next] :=
  le_trans (pow_le_pow_left' hpair 4)
    (forkReplayPairContinue_pow_four_le_raw main qb i cf next)

/-- The raw three-trial success probability dominates the fourth power of
VCVio's packaged pair-fork lower bound. -/
private lemma forkReplay4_rawSuccess_bound [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    [unifSpec ˡ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (hreach : CfReachable main qb i cf) :
    (let acc : ℝ≥0∞ := ∑ s, Pr[= some s | cf <$> main]
     let h : ℝ≥0∞ := Fintype.card (spec.Range i)
     let q := qb i + 1
     (acc * (acc / q - h⁻¹)) ^ 4) ≤
      Pr[forkReplay4RawSuccess | forkReplay4Core main qb i cf] := by
  let w : α × QueryLog spec → ℝ≥0∞ :=
    fun first => Pr[= first | replayFirstRun main]
  let p : α × QueryLog spec → ℝ≥0∞ :=
    fun first => replayTrialSuccessProbability main qb i cf first
  have hw : ∑' first, w first ≤ 1 := tsum_probOutput_le_one
  have hp : ∀ first, p first ≤ 1 := by
    intro first
    exact probEvent_le_one
  have hpair := le_probEvent_isSome_forkReplay main qb i cf hreach
  rw [probEvent_isSome_forkReplay_eq_tsum main qb i cf] at hpair
  change (let acc : ℝ≥0∞ := ∑ s, Pr[= some s | cf <$> main]
      let h : ℝ≥0∞ := Fintype.card (spec.Range i)
      let q := qb i + 1
      (acc * (acc / q - h⁻¹)) ^ 4) ≤ _
  calc
    (let acc : ℝ≥0∞ := ∑ s, Pr[= some s | cf <$> main]
      let h : ℝ≥0∞ := Fintype.card (spec.Range i)
      let q := qb i + 1
      (acc * (acc / q - h⁻¹)) ^ 4) ≤
        (∑' first, w first * p first) ^ 4 := by
          apply pow_le_pow_left'
          simpa [w, p] using hpair
    _ ≤ ∑' first, w first * p first ^ 3 :=
      pow_four_tsum_le_tsum_cube w p hw hp
    _ = Pr[forkReplay4RawSuccess | forkReplay4Core main qb i cf] := by
      rw [probEvent_forkReplay4RawSuccess_eq_tsum main qb i cf]

/-- A completed trial's observed answer at the fork slot is its sampled
replacement. -/
private lemma replayTrial_success_answer_eq_replacement
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (trace : QueryLog spec)
    (s : Fin (qb i + 1)) (logged replacement : spec.Range i)
    {z : α × ReplayForkState spec i}
    (hz : some (replacement, z) ∈
      support (replayTrial main qb i cf trace s logged)) :
    QueryLog.getQueryValue? z.2.observed i ↑s = some replacement := by
  rcases replayTrial_support_props main qb i cf trace s logged replacement hz with
    ⟨_, hrun, _, hconsumed, _⟩
  exact replayRunWithTraceValue_getQueryValue?_observed_eq_replacement
    (main := main) (i := i) (trace := trace) (forkQuery := ↑s)
    (replacement := replacement) hrun hconsumed

/-- An option-valued trial reports a specified sampled replacement. -/
private def trialHasReplacement {β γ : Type} (u : β) : Option (β × γ) → Prop
  | some (v, _) => v = u
  | none => False

private lemma probEvent_replayTrialWithReplacement_hasReplacement_eq_zero
    [spec.DecidableEq] [IsUniformSpec spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (trace : QueryLog spec)
    (s : Fin (qb i + 1)) (logged u u₀ : spec.Range i) (hu : u ≠ u₀) :
    Pr[trialHasReplacement u₀ |
      replayTrialWithReplacement main qb i cf trace s logged u] = 0 := by
  classical
  unfold replayTrialWithReplacement
  by_cases hul : u = logged
  · simp [hul, trialHasReplacement]
  · rw [if_neg hul]
    rw [show (do
          let z? ← checkedReplay main qb i cf trace s u
          pure ((u, ·) <$> z?)) =
        (fun z? => (u, ·) <$> z?) <$>
          checkedReplay main qb i cf trace s u by simp]
    rw [probEvent_map]
    apply probEvent_eq_zero
    intro z? _
    rcases z? with _ | z <;> simp [trialHasReplacement, hu]

/-- A successful `replayTrial` reports any fixed replacement with probability
at most the inverse range size. -/
private lemma probEvent_replayTrial_hasReplacement_le
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    [unifSpec ˡ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (trace : QueryLog spec)
    (s : Fin (qb i + 1)) (logged u₀ : spec.Range i) :
    Pr[trialHasReplacement u₀ | replayTrial main qb i cf trace s logged] ≤
      (Fintype.card (spec.Range i) : ℝ≥0∞)⁻¹ := by
  classical
  simp only [replayTrial, probEvent_bind_eq_tsum]
  have hpoint : ∀ u,
      Pr[= u | liftComp ($ᵗ spec.Range i) spec] *
          Pr[trialHasReplacement u₀ |
            replayTrialWithReplacement main qb i cf trace s logged u] ≤
        if u = u₀ then Pr[= u | liftComp ($ᵗ spec.Range i) spec] else 0 := by
    intro u
    by_cases hu : u = u₀
    · simp only [if_pos hu]
      exact mul_probEvent_le
        (mx := replayTrialWithReplacement main qb i cf trace s logged u)
        (r := Pr[= u | liftComp ($ᵗ spec.Range i) spec])
        (trialHasReplacement u₀)
    · simp only [if_neg hu]
      rw [probEvent_replayTrialWithReplacement_hasReplacement_eq_zero
        main qb i cf trace s logged u u₀ hu, mul_zero]
  calc
    (∑' u, Pr[= u | liftComp ($ᵗ spec.Range i) spec] *
        Pr[trialHasReplacement u₀ |
          replayTrialWithReplacement main qb i cf trace s logged u]) ≤
      ∑' u, if u = u₀ then Pr[= u | liftComp ($ᵗ spec.Range i) spec] else 0 :=
        ENNReal.tsum_le_tsum hpoint
    _ = Pr[= u₀ | liftComp ($ᵗ spec.Range i) spec] := by simp
    _ = (Fintype.card (spec.Range i) : ℝ≥0∞)⁻¹ := by
      rw [probOutput_liftComp, probOutput_uniformSample]

/-- Two successful option-valued trials report the same replacement. -/
private def trialPairCollision {β γ : Type} :
    Option (β × γ) × Option (β × γ) → Prop
  | (some (u, _), some (v, _)) => v = u
  | _ => False

/-- Three successful option-valued trials contain a replacement collision. -/
private def trialTripleCollision {β γ : Type} :
    Option (β × γ) × Option (β × γ) × Option (β × γ) → Prop
  | (some (u₁, _), some (u₂, _), some (u₃, _)) =>
      u₂ = u₁ ∨ u₃ = u₁ ∨ u₃ = u₂
  | _ => False

/-- A fixed-replacement bound implies the corresponding independent pair
collision bound. -/
private lemma probEvent_two_trials_collision_le
    [IsUniformSpec spec] {β γ : Type} (mx : OracleComp spec (Option (β × γ)))
    (ε : ℝ≥0∞) (hfixed : ∀ u, Pr[trialHasReplacement u | mx] ≤ ε) :
    Pr[trialPairCollision | do
        let x ← mx
        let y ← mx
        pure (x, y)] ≤ ε := by
  classical
  apply probEvent_bind_le_of_forall_le
  intro x _
  rcases x with _ | ⟨u, z⟩
  · rw [show (do
        let y ← mx
        pure (none, y)) = (fun y => (none, y)) <$> mx by simp]
    rw [probEvent_map]
    have hz : Pr[trialPairCollision ∘ (fun y => (none, y)) | mx] = 0 := by
      apply probEvent_eq_zero
      intro y _
      rcases y with _ | y <;> simp [trialPairCollision]
    rw [hz]
    exact zero_le
  · rw [show (do
        let y ← mx
        pure (some (u, z), y)) =
      (fun y => (some (u, z), y)) <$> mx by simp]
    rw [probEvent_map]
    apply le_trans _ (hfixed u)
    apply le_of_eq
    apply probEvent_ext
    intro y _
    rcases y with _ | ⟨v, b⟩ <;>
      simp [trialPairCollision, trialHasReplacement]

set_option maxHeartbeats 800000
/-- Three independent trials have a replacement collision with probability at
most three times the fixed-replacement bound. -/
private lemma probEvent_three_trials_collision_le
    [IsUniformSpec spec] {β γ : Type} (mx : OracleComp spec (Option (β × γ)))
    (ε : ℝ≥0∞) (hfixed : ∀ u, Pr[trialHasReplacement u | mx] ≤ ε) :
    Pr[trialTripleCollision | do
        let x ← mx
        let y ← mx
        let z ← mx
        pure (x, y, z)] ≤ 3 * ε := by
  classical
  let pair : OracleComp spec (Option (β × γ) × Option (β × γ)) := do
    let x ← mx
    let y ← mx
    pure (x, y)
  have hpair : Pr[trialPairCollision | pair] ≤ ε :=
    probEvent_two_trials_collision_le mx ε hfixed
  let c₁₂ : Option (β × γ) × Option (β × γ) × Option (β × γ) → Prop :=
    fun r => trialPairCollision (r.1, r.2.1)
  let c₁₃ : Option (β × γ) × Option (β × γ) × Option (β × γ) → Prop :=
    fun r => trialPairCollision (r.1, r.2.2)
  let c₂₃ : Option (β × γ) × Option (β × γ) × Option (β × γ) → Prop :=
    fun r => trialPairCollision (r.2.1, r.2.2)
  have h₁₂ : Pr[c₁₂ | do
      let x ← mx; let y ← mx; let z ← mx; pure (x, y, z)] ≤ ε := by
    rw [show (do
          let x ← mx; let y ← mx; let z ← mx; pure (x, y, z)) =
        (fun xy z => (xy.1, xy.2, z)) <$> pair <*> mx by
          simp [pair, seq_eq_bind_map]]
    have hprod := probEvent_seq_map_eq_mul
      (mx := pair) (my := mx) (f := fun xy z => (xy.1, xy.2, z))
      c₁₂ trialPairCollision (fun _ => True) (by
        intro xy _ z _
        rcases xy with ⟨x, y⟩
        simp [c₁₂])
    rw [hprod]
    exact le_trans (mul_probEvent_le (mx := mx)
      (r := Pr[trialPairCollision | pair]) (fun _ => True)) hpair
  have h₂₃ : Pr[c₂₃ | do
      let x ← mx; let y ← mx; let z ← mx; pure (x, y, z)] ≤ ε := by
    rw [show (do
          let x ← mx; let y ← mx; let z ← mx; pure (x, y, z)) =
        (fun x yz => (x, yz.1, yz.2)) <$> mx <*> pair by
          simp [pair, seq_eq_bind_map]]
    have hprod := probEvent_seq_map_eq_mul
      (mx := mx) (my := pair) (f := fun x yz => (x, yz.1, yz.2))
      c₂₃ (fun _ => True) trialPairCollision (by
        intro x _ yz _
        rcases yz with ⟨y, z⟩
        simp [c₂₃])
    rw [hprod]
    exact le_trans (probEvent_mul_le (mx := mx)
      (r := Pr[trialPairCollision | pair]) (fun _ => True)) hpair
  have h₁₃ : Pr[c₁₃ | do
      let x ← mx; let y ← mx; let z ← mx; pure (x, y, z)] ≤ ε := by
    apply probEvent_bind_le_of_forall_le
    intro x _
    rcases x with _ | ⟨u, a⟩
    · rw [show (do
          let y ← mx; let z ← mx; pure (none, y, z)) =
        (fun y z => (none, y, z)) <$> mx <*> mx by
          simp [seq_eq_bind_map]]
      have hzero := probEvent_seq_map_eq_mul
        (mx := mx) (my := mx) (f := fun y z => (none, y, z))
        c₁₃ (fun _ => False) (fun _ => False) (by
          intro y _ z _
          simp [c₁₃, trialPairCollision])
      rw [hzero]
      simp
    · have hprod := probEvent_seq_map_eq_mul
        (mx := mx) (my := mx) (f := fun y z => (some (u, a), y, z))
        c₁₃ (fun _ => True) (trialHasReplacement u) (by
          intro y _ z _
          rcases z with _ | ⟨v, b⟩ <;>
            simp [c₁₃, trialPairCollision, trialHasReplacement])
      rw [show (do
            let y ← mx; let z ← mx; pure (some (u, a), y, z)) =
          (fun y z => (some (u, a), y, z)) <$> mx <*> mx by
            simp [seq_eq_bind_map]]
      rw [hprod]
      exact le_trans (probEvent_mul_le (mx := mx)
        (r := Pr[trialHasReplacement u | mx]) (fun _ => True)) (hfixed u)
  calc
    Pr[trialTripleCollision | do
        let x ← mx; let y ← mx; let z ← mx; pure (x, y, z)] ≤
      Pr[fun r => c₁₂ r ∨ c₁₃ r ∨ c₂₃ r | do
        let x ← mx; let y ← mx; let z ← mx; pure (x, y, z)] := by
          apply probEvent_mono
          intro r _ hr
          rcases r with ⟨x, y, z⟩
          rcases x with _ | ⟨u₁, a⟩ <;> rcases y with _ | ⟨u₂, b⟩ <;>
            rcases z with _ | ⟨u₃, c⟩ <;>
            simp_all [trialTripleCollision, trialPairCollision, c₁₂, c₁₃, c₂₃]
    _ ≤ Pr[c₁₂ | do let x ← mx; let y ← mx; let z ← mx; pure (x, y, z)] +
        (Pr[c₁₃ | do let x ← mx; let y ← mx; let z ← mx; pure (x, y, z)] +
        Pr[c₂₃ | do let x ← mx; let y ← mx; let z ← mx; pure (x, y, z)]) := by
          exact le_trans (probEvent_or_le _ _ _)
            (add_le_add le_rfl (probEvent_or_le _ _ _))
    _ ≤ ε + (ε + ε) := add_le_add h₁₂ (add_le_add h₁₃ h₂₃)
    _ = 3 * ε := by ring

set_option maxHeartbeats 200000

/-- The three replay replacements collide with probability at most three
times the inverse oracle range size. -/
private lemma forkReplay4_rawCollision_bound
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    [unifSpec ˡ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) :
    Pr[forkReplay4RawCollision | forkReplay4Core main qb i cf] ≤
      3 * (Fintype.card (spec.Range i) : ℝ≥0∞)⁻¹ := by
  classical
  rw [forkReplay4Core]
  apply probEvent_bind_le_of_forall_le
  intro first _
  unfold forkReplay4FromCore
  rcases hcf : cf first.1 with _ | s
  · simp [forkReplay4RawCollision]
  · rcases hlogged : QueryLog.getQueryValue? first.2 i ↑s with _ | logged
    · simp [hlogged, forkReplay4RawCollision]
    · simp only [hlogged]
      let mx := replayTrial main qb i cf first.2 s logged
      let ε : ℝ≥0∞ := (Fintype.card (spec.Range i) : ℝ≥0∞)⁻¹
      have hfixed : ∀ u, Pr[trialHasReplacement u | mx] ≤ ε := by
        intro u
        exact probEvent_replayTrial_hasReplacement_le
          main qb i cf first.2 s logged u
      change Pr[forkReplay4RawCollision | do
          let z₁ ← mx
          let z₂ ← mx
          let z₃ ← mx
          pure (first, z₁, z₂, z₃)] ≤ 3 * ε
      let triple : OracleComp spec
          (Option (spec.Range i × (α × ReplayForkState spec i)) ×
            Option (spec.Range i × (α × ReplayForkState spec i)) ×
            Option (spec.Range i × (α × ReplayForkState spec i))) := do
        let z₁ ← mx
        let z₂ ← mx
        let z₃ ← mx
        pure (z₁, z₂, z₃)
      have hmap : (do
            let z₁ ← mx
            let z₂ ← mx
            let z₃ ← mx
            pure (first, z₁, z₂, z₃) : OracleComp spec _) =
          (fun z => (first, z.1, z.2.1, z.2.2)) <$> triple := by
        simp [triple]
      rw [hmap, probEvent_map]
      apply le_trans _ (by
        simpa [triple] using probEvent_three_trials_collision_le mx ε hfixed)
      apply le_of_eq
      apply probEvent_ext
      rintro ⟨z₁?, z₂?, z₃?⟩ _
      rcases z₁? with _ | ⟨u₁, z₁⟩ <;>
        rcases z₂? with _ | ⟨u₂, z₂⟩ <;>
        rcases z₃? with _ | ⟨u₃, z₃⟩ <;>
        simp [forkReplay4RawCollision, trialTripleCollision]

/-- Strict quantitative decomposition for the four-way fork: raw three-replay
success minus the probability of a cross-replay answer collision is bounded by
the delivered four-way success probability. -/
theorem forkReplay4_raw_bound [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) :
    Pr[forkReplay4RawSuccess | forkReplay4Core main qb i cf] -
        Pr[forkReplay4RawCollision | forkReplay4Core main qb i cf] ≤
      Pr[fun r : Option (Fin 4 → α) => r.isSome | forkReplay4 main qb i cf] := by
  classical
  rw [forkReplay4, probEvent_map]
  apply (tsub_le_iff_right).2
  calc
    Pr[forkReplay4RawSuccess | forkReplay4Core main qb i cf] ≤
        Pr[fun r => (finishForkReplay4 r).isSome ∨ forkReplay4RawCollision r |
          forkReplay4Core main qb i cf] := by
      apply probEvent_mono
      intro r _ hr
      rcases r with ⟨first, z₁?, z₂?, z₃?⟩
      rcases z₁? with _ | ⟨u₁, z₁⟩ <;>
        rcases z₂? with _ | ⟨u₂, z₂⟩ <;>
        rcases z₃? with _ | ⟨u₃, z₃⟩ <;>
        simp_all [forkReplay4RawSuccess, forkReplay4RawCollision, finishForkReplay4]
      by_cases h₂₁ : u₂ = u₁ <;> by_cases h₃₁ : u₃ = u₁ <;>
        by_cases h₃₂ : u₃ = u₂ <;>
        simp [h₂₁, h₃₁, h₃₂]
    _ ≤ Pr[fun r => (finishForkReplay4 r).isSome | forkReplay4Core main qb i cf] +
        Pr[forkReplay4RawCollision | forkReplay4Core main qb i cf] :=
      probEvent_or_le _ _ _

/-- Closed four-way replay-fork bound (DESIGN §U5b). -/
theorem forkReplay4_bound [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    [unifSpec ˡ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (hreach : CfReachable main qb i cf) :
    (let acc : ℝ≥0∞ := ∑ s, Pr[= some s | cf <$> main]
     let h : ℝ≥0∞ := Fintype.card (spec.Range i)
     let q := qb i + 1
     (acc * (acc / q - h⁻¹)) ^ 4 - 3 * h⁻¹) ≤
      Pr[fun r : Option (Fin 4 → α) => r.isSome | forkReplay4 main qb i cf] := by
  have hsuccess := forkReplay4_rawSuccess_bound main qb i cf hreach
  have hcollision := forkReplay4_rawCollision_bound main qb i cf
  calc
    (let acc : ℝ≥0∞ := ∑ s, Pr[= some s | cf <$> main]
      let h : ℝ≥0∞ := Fintype.card (spec.Range i)
      let q := qb i + 1
      (acc * (acc / q - h⁻¹)) ^ 4 - 3 * h⁻¹) ≤
        Pr[forkReplay4RawSuccess | forkReplay4Core main qb i cf] -
          3 * (Fintype.card (spec.Range i) : ℝ≥0∞)⁻¹ :=
      tsub_le_tsub_right hsuccess _
    _ ≤ Pr[forkReplay4RawSuccess | forkReplay4Core main qb i cf] -
        Pr[forkReplay4RawCollision | forkReplay4Core main qb i cf] :=
      tsub_le_tsub_left hcollision _
    _ ≤ Pr[fun r : Option (Fin 4 → α) => r.isSome |
        forkReplay4 main qb i cf] := forkReplay4_raw_bound main qb i cf

/-- Execute a logged canonical run and then its randomized continuation. -/
noncomputable def continuedForkMain {β : Type}
    (main : OracleComp spec α)
    (next : (α × QueryLog spec) → OracleComp spec (Option β)) :
    OracleComp spec ((α × QueryLog spec) × Option β) := do
  let first ← replayFirstRun main
  let result? ← next first
  pure (first, result?)

/-- Keep the optional output of a logged run.  This generic helper is the
continuation used by bottom-up combined fork trees. -/
def keepOptionalChild {β : Type} :
    (Option β × QueryLog spec) →
      OracleComp spec (Option β) :=
  fun output => pure output.1

/-- Selector for the continued experiment. It accepts exactly when the
continuation succeeded and the original selector passes the lower-slot gate. -/
def continuedForkSelector {β : Type}
    (qb : ι → ℕ) (i : ι) (cf : α → Option (Fin (qb i + 1)))
    (lower : Option (Fin (qb i + 1))) :
    ((α × QueryLog spec) × Option β) → Option (Fin (qb i + 1))
  | (first, some _) => gatedForkSelector qb i cf lower first.1
  | (_, none) => none

/-- Echoing a logged optional output turns option-success refinement into
selector refinement for the continued replay computation. -/
theorem continuedForkMain_keepOptionalChild_selectorRefines
    {β : Type}
    (left right : OracleComp spec (Option β))
    (qb : ι → Nat)
    (i : ι)
    (cf : Option β → Option (Fin (qb i + 1)))
    (lower : Option (Fin (qb i + 1)))
    (refines : OracleOptionSuccessRefines left right) :
    OracleSelectorRefines
      (continuedForkSelector qb i cf lower)
      (continuedForkMain left keepOptionalChild)
      (continuedForkMain right keepOptionalChild) := by
  have hlogged :
      OracleFailClosedRefines
        (loggedOutputFails
          (fun output : Option β => output = none))
        (loggedOutputsMatch (sameSome (β := β)))
        (OracleComp.replayFirstRun left)
        (OracleComp.replayFirstRun right) :=
    OracleFailClosedRefines.replayFirstRun refines
  have hmapped :
      OracleSelectorRefines
        (continuedForkSelector qb i cf lower)
        ((fun output => (output, output.1)) <$>
          replayFirstRun left)
        ((fun output => (output, output.1)) <$>
          replayFirstRun right) := by
    refine OracleFailClosedRefines.mapGate hlogged
      (fun output => (output, output.1))
      (fun output => (output, output.1))
      ?_ ?_
    · intro output hfailure
      have hnone : output.1 = none := by
        simpa [loggedOutputFails] using hfailure
      rcases output with ⟨output, log⟩
      simp only at hnone
      subst output
      rfl
    · intro leftOutput rightOutput hmatch
      change
        sameSome leftOutput.1 rightOutput.1 ∧
          leftOutput.2 = rightOutput.2 at hmatch
      obtain ⟨⟨output, hleft, hright⟩, hlog⟩ := hmatch
      have houtputs : leftOutput = rightOutput := by
        cases leftOutput
        cases rightOutput
        simp_all
      subst rightOutput
      rcases hselector :
          continuedForkSelector qb i cf lower
            (leftOutput, leftOutput.1) with _ | slot
      · exact Or.inl hselector
      · exact Or.inr ⟨rfl, slot, hselector⟩
  rw [map_eq_pure_bind] at hmapped
  simpa only [continuedForkMain, keepOptionalChild,
    pure_bind] using hmapped

/-- Averaged continuation-parametrized four-child experiment. Forking the
continued computation makes child zero and all three replays run `next`
independently, while retaining the closed collision filter. -/
noncomputable def forkReplay4Continue [spec.DecidableEq]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (lower : Option (Fin (qb i + 1)))
    (next : (α × QueryLog spec) → OracleComp spec (Option β))
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option (Fin 4 → (α × QueryLog spec) × Option β)) :=
  forkReplay4 (continuedForkMain main next) qb i
    (continuedForkSelector qb i cf lower)

/-- The four-child continuation preserves replay-contextual success
refinement when the continuation simply retains the optional child. -/
theorem forkReplay4Continue_keepOptionalChild_refines
    [spec.DecidableEq]
    {β : Type}
    (left right : OracleComp spec (Option β))
    (qb : ι → Nat)
    (i : ι)
    (cf : Option β → Option (Fin (qb i + 1)))
    (lower : Option (Fin (qb i + 1)))
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (refines : OracleOptionSuccessRefines left right) :
    OracleOptionSuccessRefines
      (forkReplay4Continue
        left qb i cf lower keepOptionalChild)
      (forkReplay4Continue
        right qb i cf lower keepOptionalChild) := by
  unfold forkReplay4Continue
  apply forkReplay4_selectorRefines
  exact continuedForkMain_keepOptionalChild_selectorRefines
    left right qb i cf lower refines

/-- Closed one-level continuation bound. Its acceptance mass includes
continuation success, `cf = some s`, reachability, and the lower-slot gate. -/
theorem forkReplay4Continue_bound [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    [unifSpec ˡ⊂ₒ spec]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (lower : Option (Fin (qb i + 1)))
    (next : (α × QueryLog spec) → OracleComp spec (Option β))
    (hreach : CfReachable (continuedForkMain main next) qb i
      (continuedForkSelector qb i cf lower)) :
    (let acc : ℝ≥0∞ := ∑ s, Pr[= some s |
        continuedForkSelector qb i cf lower <$> continuedForkMain main next]
     let h : ℝ≥0∞ := Fintype.card (spec.Range i)
     let q := qb i + 1
     (acc * (acc / q - h⁻¹)) ^ 4 - 3 * h⁻¹) ≤
      Pr[fun r : Option (Fin 4 → (α × QueryLog spec) × Option β) => r.isSome |
        forkReplay4Continue main qb i cf lower next] := by
  exact forkReplay4_bound (continuedForkMain main next) qb i
    (continuedForkSelector qb i cf lower) hreach

/-- Transfer a logged-run postcondition to every branch of a successful
four-way replay fork, together with the common slot and distinct-answer facts
required by `tipp-mipp.gipa` (DESIGN §U5b). -/
theorem forkReplay4_propertyTransfer [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (P_out : α → QueryLog spec → Prop)
    (hP : ∀ {x log}, (x, log) ∈ support (replayFirstRun main) → P_out x log)
    {xs : Fin 4 → α}
    (h : some xs ∈ support (forkReplay4 main qb i cf)) :
    ∃ (logs : Fin 4 → QueryLog spec) (s : Fin (qb i + 1))
        (answers : Fin 4 → spec.Range i),
      (∀ k, cf (xs k) = some s) ∧
      (∀ k, P_out (xs k) (logs k)) ∧
      Function.Injective answers ∧
      (∀ k, QueryLog.getQueryValue? (logs k) i ↑s = some (answers k)) := by
  rcases forkReplay4_support_props main qb i cf h with
    ⟨logs, s, answers, cursor, hsupport, hcf, hinj, hanswers, hcursor, hprefix⟩
  exact ⟨logs, s, answers, hcf, fun k => hP (hsupport k), hinj, hanswers⟩

end Ipp
