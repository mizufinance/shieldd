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
            refine ⟨s, answers, cursor, slotPos, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
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
