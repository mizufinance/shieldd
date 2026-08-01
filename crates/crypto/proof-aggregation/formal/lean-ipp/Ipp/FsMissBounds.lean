/-
U5a structured-miss union bounds for mixed Fiat--Shamir source computations.
The event selects only structured answers, so ambient uniform ranges do not
enter the denominator.
-/
import Ipp.FsFork

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp

noncomputable section

variable {Point F α : Type} [Fintype F]
  [IsUniformSpec (unifSpec + (Point →ₒ F))]

/-- Structured answers in mixed-source log order. -/
def structuredAnswers :
    QueryLog (unifSpec + (Point →ₒ F)) → List F
  | [] => []
  | ⟨Sum.inl _, _⟩ :: rest => structuredAnswers rest
  | ⟨Sum.inr _, answer⟩ :: rest => answer :: structuredAnswers rest

@[simp] theorem structuredAnswers_length
    (log : QueryLog (unifSpec + (Point →ₒ F))) :
    (structuredAnswers log).length = (fsPointTrace log).length := by
  induction log with
  | nil => rfl
  | cons entry rest ih =>
      rcases entry with ⟨t, answer⟩
      cases t <;> simp [structuredAnswers, fsPointTrace, ih]

theorem structuredAnswers_length_le
    (log : QueryLog (unifSpec + (Point →ₒ F))) :
    (structuredAnswers log).length ≤ log.length := by
  induction log with
  | nil => exact Nat.le_refl 0
  | cons entry rest ih =>
      rcases entry with ⟨t, answer⟩
      cases t with
      | inl n => simpa [structuredAnswers] using Nat.le_succ_of_le ih
      | inr point => simpa [structuredAnswers] using Nat.succ_le_succ ih

/-- Flattening preserves the ordinal view of structured answers. -/
theorem getQueryValue?_flattenFsLog
    [DecidableEq F]
    (log : QueryLog (unifSpec + (Point →ₒ F))) (i : Nat) :
    QueryLog.getQueryValue? (flattenFsLog log) (Sum.inr ()) i =
      (structuredAnswers log)[i]? := by
  induction log generalizing i with
  | nil => simp [flattenFsLog, structuredAnswers, QueryLog.getQueryValue?]
  | cons entry rest ih =>
      rcases entry with ⟨t, answer⟩
      cases t with
      | inl n =>
          change QueryLog.getQueryValue?
              ((⟨Sum.inl n, answer⟩ :
                (j : Nat ⊕ Unit) × (FsWrappedSpec F).Range j) ::
                flattenFsLog rest) (Sum.inr ()) i =
            (structuredAnswers rest)[i]?
          rw [QueryLog.getQueryValue?_cons_of_ne]
          · exact ih i
          · exact Sum.inl_ne_inr
      | inr point =>
          cases i with
          | zero =>
              exact QueryLog.getQueryValue?_cons_self_zero
                (Sum.inr ()) answer (flattenFsLog rest)
          | succ i =>
              change QueryLog.getQueryValue?
                  ((⟨Sum.inr (), answer⟩ :
                    (j : Nat ⊕ Unit) × (FsWrappedSpec F).Range j) ::
                    flattenFsLog rest) (Sum.inr ()) (i + 1) =
                (structuredAnswers rest)[i]?
              rw [QueryLog.getQueryValue?_cons_self_succ]
              exact ih i

/-- At a fixed structured-miss ordinal, the answer hits `bad` with probability
at most `|bad|/|F|`; ambient queries do not consume the ordinal. -/
theorem structured_answer_mem_at_le
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (k : Nat) (bad : Finset F) :
    Pr[fun z => ∃ answer, (structuredAnswers z.2)[k]? = some answer ∧
        answer ∈ bad | replayFirstRun oa] ≤
      (bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) := by
  classical
  induction oa using OracleComp.inductionOn generalizing k with
  | pure x =>
      simp [replayFirstRun, structuredAnswers]
  | query_bind t mx ih =>
      rw [show replayFirstRun (liftM (query t) >>= mx) =
          ((query t : OracleComp (unifSpec + (Point →ₒ F)) _) >>= fun u =>
            (fun z => (z.1, (⟨t, u⟩ : (i : (unifSpec + (Point →ₒ F)).Domain) ×
              (unifSpec + (Point →ₒ F)).Range i) :: z.2)) <$> replayFirstRun (mx u)) by
        unfold replayFirstRun
        exact OracleComp.run_simulateQ_loggingOracle_query_bind t mx]
      rw [probEvent_bind_eq_tsum]
      simp_rw [probEvent_map, Function.comp_def]
      cases t with
      | inl n =>
          simp only [structuredAnswers]
          calc
            ∑' u, Pr[= u | (liftM ((unifSpec + (Point →ₒ F)).query (Sum.inl n)) :
                    OracleComp (unifSpec + (Point →ₒ F)) _)] *
                Pr[fun z => ∃ answer, (structuredAnswers z.2)[k]? = some answer ∧
                    answer ∈ bad | replayFirstRun (mx u)]
              ≤ ∑' u, Pr[= u | (liftM ((unifSpec + (Point →ₒ F)).query (Sum.inl n)) :
                    OracleComp (unifSpec + (Point →ₒ F)) _)] *
                  ((bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) :=
                ENNReal.tsum_le_tsum fun u => mul_le_mul' le_rfl (ih u k)
            _ = (∑' u, Pr[= u | (liftM ((unifSpec + (Point →ₒ F)).query (Sum.inl n)) :
                    OracleComp (unifSpec + (Point →ₒ F)) _)]) *
                  ((bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) :=
                ENNReal.tsum_mul_right
            _ ≤ 1 * ((bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) :=
                mul_le_mul' tsum_probOutput_le_one le_rfl
            _ = (bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) := one_mul _
      | inr point =>
          cases k with
          | zero =>
              calc
                ∑' x, Pr[= x | (liftM ((unifSpec + (Point →ₒ F)).query
                        (Sum.inr point)) : OracleComp (unifSpec + (Point →ₒ F)) F)] *
                      Pr[fun z => ∃ answer,
                          (structuredAnswers ((⟨Sum.inr point, x⟩ :
                            (i : (unifSpec + (Point →ₒ F)).Domain) ×
                              (unifSpec + (Point →ₒ F)).Range i) :: z.2))[0]? =
                            some answer ∧ answer ∈ bad | replayFirstRun (mx x)]
                    ≤ ∑' x : F, (Fintype.card F : ℝ≥0∞)⁻¹ *
                        (if x ∈ bad then 1 else 0) := by
                      apply ENNReal.tsum_le_tsum
                      intro x
                      have hprob : Pr[= x | (liftM
                          ((unifSpec + (Point →ₒ F)).query (Sum.inr point)) :
                            OracleComp (unifSpec + (Point →ₒ F)) F)] =
                          (Fintype.card F : ℝ≥0∞)⁻¹ := by
                        have hp := probOutput_query
                          (spec := unifSpec + (Point →ₒ F)) (Sum.inr point) x
                        exact hp.trans (by congr; exact Subsingleton.elim _ _)
                      rw [hprob]
                      by_cases hx : x ∈ bad
                      · simp [structuredAnswers, hx]
                      · simp [structuredAnswers, hx]
                _ = (bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) := by
                      rw [ENNReal.tsum_mul_left,
                        tsum_eq_sum (s := Finset.univ) (by simp), Finset.sum_ite,
                        Finset.sum_const_zero, add_zero, Finset.sum_const,
                        nsmul_eq_mul, div_eq_mul_inv, mul_comm]
                      simp
          | succ k =>
              simp only [structuredAnswers, List.getElem?_cons_succ]
              calc
                ∑' u, Pr[= u | (liftM ((unifSpec + (Point →ₒ F)).query (Sum.inr point)) :
                        OracleComp (unifSpec + (Point →ₒ F)) _)] *
                    Pr[fun z => ∃ answer,
                        (structuredAnswers z.2)[k]? = some answer ∧ answer ∈ bad |
                      replayFirstRun (mx u)]
                  ≤ ∑' u, Pr[= u | (liftM ((unifSpec + (Point →ₒ F)).query (Sum.inr point)) :
                        OracleComp (unifSpec + (Point →ₒ F)) _)] *
                      ((bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) :=
                    ENNReal.tsum_le_tsum fun u => mul_le_mul' le_rfl (ih u k)
                _ = (∑' u, Pr[= u | (liftM ((unifSpec + (Point →ₒ F)).query (Sum.inr point)) :
                        OracleComp (unifSpec + (Point →ₒ F)) _)]) *
                      ((bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) :=
                    ENNReal.tsum_mul_right
                _ ≤ 1 * ((bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) :=
                    mul_le_mul' tsum_probOutput_le_one le_rfl
                _ = (bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) := one_mul _

/-- For two fixed ordered structured-miss ordinals, the later fresh answer
matches the earlier adaptive answer with probability at most `1/|F|`. -/
theorem structured_answer_collision_at_le
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (i j : Nat) (hij : i < j) :
    Pr[fun z => ∃ answer,
        (structuredAnswers z.2)[i]? = some answer ∧
        (structuredAnswers z.2)[j]? = some answer | replayFirstRun oa] ≤
      (Fintype.card F : ℝ≥0∞)⁻¹ := by
  classical
  induction oa using OracleComp.inductionOn generalizing i j with
  | pure x =>
      simp [replayFirstRun, structuredAnswers]
  | query_bind t mx ih =>
      rw [show replayFirstRun (liftM (query t) >>= mx) =
          ((query t : OracleComp (unifSpec + (Point →ₒ F)) _) >>= fun u =>
            (fun z => (z.1, (⟨t, u⟩ : (k : (unifSpec + (Point →ₒ F)).Domain) ×
              (unifSpec + (Point →ₒ F)).Range k) :: z.2)) <$> replayFirstRun (mx u)) by
        unfold replayFirstRun
        exact OracleComp.run_simulateQ_loggingOracle_query_bind t mx]
      rw [probEvent_bind_eq_tsum]
      simp_rw [probEvent_map, Function.comp_def]
      cases t with
      | inl n =>
          simp only [structuredAnswers]
          calc
            ∑' u, Pr[= u | (liftM ((unifSpec + (Point →ₒ F)).query (Sum.inl n)) :
                    OracleComp (unifSpec + (Point →ₒ F)) _)] *
                Pr[fun z => ∃ answer,
                    (structuredAnswers z.2)[i]? = some answer ∧
                    (structuredAnswers z.2)[j]? = some answer |
                  replayFirstRun (mx u)]
              ≤ ∑' u, Pr[= u | (liftM ((unifSpec + (Point →ₒ F)).query (Sum.inl n)) :
                    OracleComp (unifSpec + (Point →ₒ F)) _)] *
                  (Fintype.card F : ℝ≥0∞)⁻¹ :=
                ENNReal.tsum_le_tsum fun u => mul_le_mul' le_rfl (ih u i j hij)
            _ = (∑' u, Pr[= u | (liftM ((unifSpec + (Point →ₒ F)).query (Sum.inl n)) :
                    OracleComp (unifSpec + (Point →ₒ F)) _)]) *
                  (Fintype.card F : ℝ≥0∞)⁻¹ := ENNReal.tsum_mul_right
            _ ≤ 1 * (Fintype.card F : ℝ≥0∞)⁻¹ :=
                mul_le_mul' tsum_probOutput_le_one le_rfl
            _ = (Fintype.card F : ℝ≥0∞)⁻¹ := one_mul _
      | inr point =>
          cases i with
          | zero =>
              cases j with
              | zero => omega
              | succ j =>
                  simp only [structuredAnswers, List.getElem?_cons_zero,
                    List.getElem?_cons_succ]
                  calc
                    ∑' x, Pr[= x | (liftM
                            ((unifSpec + (Point →ₒ F)).query (Sum.inr point)) :
                            OracleComp (unifSpec + (Point →ₒ F)) F)] *
                        Pr[fun z => ∃ answer, some x = some answer ∧
                            (structuredAnswers z.2)[j]? = some answer |
                          replayFirstRun (mx x)]
                      ≤ ∑' x, Pr[= x | (liftM
                            ((unifSpec + (Point →ₒ F)).query (Sum.inr point)) :
                            OracleComp (unifSpec + (Point →ₒ F)) F)] *
                          (Fintype.card F : ℝ≥0∞)⁻¹ := by
                        apply ENNReal.tsum_le_tsum
                        intro x
                        apply mul_le_mul' le_rfl
                        simpa using
                          (structured_answer_mem_at_le (mx x) j ({x} : Finset F))
                    _ = (∑' x, Pr[= x | (liftM
                            ((unifSpec + (Point →ₒ F)).query (Sum.inr point)) :
                            OracleComp (unifSpec + (Point →ₒ F)) F)]) *
                          (Fintype.card F : ℝ≥0∞)⁻¹ := ENNReal.tsum_mul_right
                    _ ≤ 1 * (Fintype.card F : ℝ≥0∞)⁻¹ :=
                        mul_le_mul' tsum_probOutput_le_one le_rfl
                    _ = (Fintype.card F : ℝ≥0∞)⁻¹ := one_mul _

          | succ i =>
              cases j with
              | zero => omega
              | succ j =>
                  have hij' : i < j := Nat.succ_lt_succ_iff.mp hij
                  simp only [structuredAnswers, List.getElem?_cons_succ]
                  calc
                    ∑' u, Pr[= u | (liftM
                            ((unifSpec + (Point →ₒ F)).query (Sum.inr point)) :
                            OracleComp (unifSpec + (Point →ₒ F)) F)] *
                        Pr[fun z => ∃ answer,
                            (structuredAnswers z.2)[i]? = some answer ∧
                            (structuredAnswers z.2)[j]? = some answer |
                          replayFirstRun (mx u)]
                      ≤ ∑' u, Pr[= u | (liftM
                            ((unifSpec + (Point →ₒ F)).query (Sum.inr point)) :
                            OracleComp (unifSpec + (Point →ₒ F)) F)] *
                          (Fintype.card F : ℝ≥0∞)⁻¹ :=
                        ENNReal.tsum_le_tsum fun u =>
                          mul_le_mul' le_rfl (ih u i j hij')
                    _ = (∑' u, Pr[= u | (liftM
                            ((unifSpec + (Point →ₒ F)).query (Sum.inr point)) :
                            OracleComp (unifSpec + (Point →ₒ F)) F)]) *
                          (Fintype.card F : ℝ≥0∞)⁻¹ := ENNReal.tsum_mul_right
                    _ ≤ 1 * (Fintype.card F : ℝ≥0∞)⁻¹ :=
                        mul_le_mul' tsum_probOutput_le_one le_rfl
                    _ = (Fintype.card F : ℝ≥0∞)⁻¹ := one_mul _

/-- Birthday union bound over the first `n` structured-miss ordinals. -/
theorem structured_answer_collision_before_le
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) (n : Nat) :
    Pr[fun z => ∃ i, i < n ∧ ∃ j, j < n ∧ i < j ∧ ∃ answer,
        (structuredAnswers z.2)[i]? = some answer ∧
        (structuredAnswers z.2)[j]? = some answer | replayFirstRun oa] ≤
      (((n ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by
  classical
  let E : Nat → Nat → (α × QueryLog (unifSpec + (Point →ₒ F))) → Prop :=
    fun i j z => i < j ∧ ∃ answer,
      (structuredAnswers z.2)[i]? = some answer ∧
      (structuredAnswers z.2)[j]? = some answer
  calc
    Pr[fun z => ∃ i, i < n ∧ ∃ j, j < n ∧ E i j z | replayFirstRun oa]
        = Pr[fun z => ∃ i ∈ Finset.range n, ∃ j ∈ Finset.range n, E i j z |
            replayFirstRun oa] := by
          congr 1
          funext z
          apply propext
          simp only [Finset.mem_range]
    _ ≤ ∑ i ∈ Finset.range n,
          Pr[fun z => ∃ j ∈ Finset.range n, E i j z | replayFirstRun oa] :=
        probEvent_exists_finset_le_sum (Finset.range n) (replayFirstRun oa)
          (fun i z => ∃ j ∈ Finset.range n, E i j z)
    _ ≤ ∑ i ∈ Finset.range n, ∑ j ∈ Finset.range n,
          Pr[E i j | replayFirstRun oa] := by
        apply Finset.sum_le_sum
        intro i _
        exact probEvent_exists_finset_le_sum (Finset.range n) (replayFirstRun oa)
          (E i)
    _ ≤ ∑ _i ∈ Finset.range n, ∑ _j ∈ Finset.range n,
          (Fintype.card F : ℝ≥0∞)⁻¹ := by
        apply Finset.sum_le_sum
        intro i _
        apply Finset.sum_le_sum
        intro j _
        by_cases hij : i < j
        · apply le_trans (probEvent_mono (q := fun z => ∃ answer,
              (structuredAnswers z.2)[i]? = some answer ∧
              (structuredAnswers z.2)[j]? = some answer) (by
                intro z _ h
                exact h.2))
          exact structured_answer_collision_at_le oa i j hij
        · have hz : Pr[E i j | replayFirstRun oa] = 0 := by
            apply probEvent_eq_zero
            intro z _ h
            exact hij h.1
          rw [hz]
          exact bot_le
    _ = (((n ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by
        simp [div_eq_mul_inv, pow_two, mul_assoc]

/-- A total query cap yields the birthday bound for failure of the wrapped
structured-answer injectivity predicate. -/
theorem structured_answers_not_injective_le
    [DecidableEq Point] [DecidableEq F]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (n : Nat) (hbound : IsTotalQueryBound oa n) :
    Pr[fun z => ¬ StructuredAnswersInjective (F := F)
        (fsPointTrace z.2).length (flattenFsLog z.2) | replayFirstRun oa] ≤
      (((n ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by
  apply le_trans (probEvent_mono (q := fun z =>
      ∃ i, i < n ∧ ∃ j, j < n ∧ i < j ∧ ∃ answer,
        (structuredAnswers z.2)[i]? = some answer ∧
        (structuredAnswers z.2)[j]? = some answer) ?_)
  · exact structured_answer_collision_before_le oa n
  · intro z hz hbad
    have hlen := log_length_le_of_mem_support_run_simulateQ hbound hz
    simp only [StructuredAnswersInjective] at hbad
    push Not at hbad
    obtain ⟨i, j, hi, hj, heq, hne⟩ := hbad
    have hi' : i < (structuredAnswers z.2).length := by
      simpa [structuredAnswers_length] using hi
    have hj' : j < (structuredAnswers z.2).length := by
      simpa [structuredAnswers_length] using hj
    have hin : i < n := Nat.lt_of_lt_of_le hi'
      (Nat.le_trans (structuredAnswers_length_le z.2) hlen)
    have hjn : j < n := Nat.lt_of_lt_of_le hj'
      (Nat.le_trans (structuredAnswers_length_le z.2) hlen)
    rw [getQueryValue?_flattenFsLog, getQueryValue?_flattenFsLog] at heq
    let answer := (structuredAnswers z.2)[i]'hi'
    have hgeti : (structuredAnswers z.2)[i]? = some answer :=
      List.getElem?_eq_getElem hi'
    have hgetj : (structuredAnswers z.2)[j]? = some answer := heq.symm.trans hgeti
    by_cases hij : i < j
    · exact ⟨i, hin, j, hjn, hij, answer, hgeti, hgetj⟩
    · have hji : j < i := by omega
      exact ⟨j, hjn, i, hin, hji, answer, hgetj, hgeti⟩

/-- At a fixed mixed-source log ordinal, a structured answer hits `bad` with
probability at most `|bad|/|F|`. -/
theorem structured_log_mem_at_le
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (k : Nat) (bad : Finset F) :
    Pr[fun z => ∃ point answer,
        z.2[k]? = some ⟨Sum.inr point, answer⟩ ∧ answer ∈ bad |
      replayFirstRun oa] ≤
      (bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) := by
  classical
  induction oa using OracleComp.inductionOn generalizing k with
  | pure x =>
      simp [replayFirstRun]
  | query_bind t mx ih =>
      rw [show replayFirstRun (liftM (query t) >>= mx) =
          ((query t : OracleComp (unifSpec + (Point →ₒ F)) _) >>= fun u =>
            (fun z => (z.1, (⟨t, u⟩ : (i : (unifSpec + (Point →ₒ F)).Domain) ×
              (unifSpec + (Point →ₒ F)).Range i) :: z.2)) <$> replayFirstRun (mx u)) by
        unfold replayFirstRun
        exact OracleComp.run_simulateQ_loggingOracle_query_bind t mx]
      rw [probEvent_bind_eq_tsum]
      simp_rw [probEvent_map, Function.comp_def]
      cases k with
      | zero =>
          cases t with
          | inl _ => simp
          | inr point =>
              calc
                ∑' x, Pr[= x | (liftM ((unifSpec + (Point →ₒ F)).query
                      (Sum.inr point)) : OracleComp (unifSpec + (Point →ₒ F)) F)] *
                    Pr[fun z => ∃ point' answer,
                        ((⟨Sum.inr point, x⟩ :
                          (i : (unifSpec + (Point →ₒ F)).Domain) ×
                            (unifSpec + (Point →ₒ F)).Range i) :: z.2)[0]? =
                            some ⟨Sum.inr point', answer⟩ ∧ answer ∈ bad |
                      replayFirstRun (mx x)]
                    ≤ ∑' x : F, (Fintype.card F : ℝ≥0∞)⁻¹ *
                        (if x ∈ bad then 1 else 0) := by
                      apply ENNReal.tsum_le_tsum
                      intro x
                      have hprob : Pr[= x | (liftM
                          ((unifSpec + (Point →ₒ F)).query (Sum.inr point)) :
                            OracleComp (unifSpec + (Point →ₒ F)) F)] =
                          (Fintype.card F : ℝ≥0∞)⁻¹ := by
                        have hp := probOutput_query
                          (spec := unifSpec + (Point →ₒ F)) (Sum.inr point) x
                        exact hp.trans (by
                          congr
                          exact Subsingleton.elim _ _)
                      rw [hprob]
                      by_cases hx : x ∈ bad
                      · simp only [hx, if_true]
                        exact mul_le_mul' le_rfl probEvent_le_one
                      · have hz : Pr[fun z => ∃ point' answer,
                            ((⟨Sum.inr point, x⟩ :
                              (i : (unifSpec + (Point →ₒ F)).Domain) ×
                                (unifSpec + (Point →ₒ F)).Range i) :: z.2)[0]? =
                                some ⟨Sum.inr point', answer⟩ ∧ answer ∈ bad |
                          replayFirstRun (mx x)] = 0 := by
                            apply probEvent_eq_zero
                            intro z _ h
                            obtain ⟨point', answer, heq, hbad⟩ := h
                            simp only [List.getElem?_cons_zero, Option.some_inj] at heq
                            cases heq
                            exact hx hbad
                        rw [hz]
                        simp [hx]
                _ = (bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) := by
                      rw [ENNReal.tsum_mul_left,
                        tsum_eq_sum (s := Finset.univ) (by simp), Finset.sum_ite,
                        Finset.sum_const_zero, add_zero, Finset.sum_const,
                        nsmul_eq_mul, div_eq_mul_inv, mul_comm]
                      simp
      | succ k =>
          simp only [List.getElem?_cons_succ]
          calc
            ∑' u, Pr[= u | (query t : OracleComp (unifSpec + (Point →ₒ F)) _)] *
                Pr[fun z => ∃ point answer,
                    z.2[k]? = some ⟨Sum.inr point, answer⟩ ∧ answer ∈ bad |
                  replayFirstRun (mx u)]
              ≤ ∑' u, Pr[= u | (query t : OracleComp (unifSpec + (Point →ₒ F)) _)] *
                  ((bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) :=
                ENNReal.tsum_le_tsum fun u => mul_le_mul' le_rfl (ih u k)
            _ = (∑' u, Pr[= u | (query t : OracleComp (unifSpec + (Point →ₒ F)) _)]) *
                  ((bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) :=
                ENNReal.tsum_mul_right
            _ ≤ 1 * ((bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) :=
                mul_le_mul' tsum_probOutput_le_one le_rfl
            _ = (bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) := one_mul _

/-- Union bound over the first `n` mixed-source log ordinals, selecting only
structured answers. -/
theorem structured_log_mem_before_le
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (n : Nat) (bad : Finset F) :
    Pr[fun z => ∃ k, k < n ∧ ∃ point answer,
        z.2[k]? = some ⟨Sum.inr point, answer⟩ ∧ answer ∈ bad |
      replayFirstRun oa] ≤
      (((n * bad.card : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by
  classical
  let E : Nat → (α × QueryLog (unifSpec + (Point →ₒ F))) → Prop :=
    fun k z => ∃ point answer,
      z.2[k]? = some ⟨Sum.inr point, answer⟩ ∧ answer ∈ bad
  calc
    Pr[fun z => ∃ k, k < n ∧ E k z | replayFirstRun oa]
        = Pr[fun z => ∃ k ∈ Finset.range n, E k z | replayFirstRun oa] := by
            congr 1
            funext z
            apply propext
            simp only [Finset.mem_range]
    _ ≤ ∑ k ∈ Finset.range n, Pr[E k | replayFirstRun oa] :=
      probEvent_exists_finset_le_sum (Finset.range n) (replayFirstRun oa) E
    _ ≤ ∑ _k ∈ Finset.range n,
        ((bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by
      exact Finset.sum_le_sum fun k _ => structured_log_mem_at_le oa k bad
    _ = (((n * bad.card : Nat) : ℝ≥0∞) /
        (Fintype.card F : ℝ≥0∞)) := by
      rw [Finset.sum_const, Finset.card_range, nsmul_eq_mul, div_eq_mul_inv]
      push_cast
      rw [div_eq_mul_inv]
      simp [mul_assoc]

/-- A total query bound turns the ordinal bound into a bound for any structured
entry occurring in the complete query log. -/
theorem structured_log_mem_le
    [(unifSpec + (Point →ₒ F)).DecidableEq]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (n : Nat) (hbound : IsTotalQueryBound oa n) (bad : Finset F) :
    Pr[fun z => ∃ point answer,
        (⟨Sum.inr point, answer⟩ :
          (i : (unifSpec + (Point →ₒ F)).Domain) ×
            (unifSpec + (Point →ₒ F)).Range i) ∈ z.2 ∧ answer ∈ bad |
      replayFirstRun oa] ≤
      (((n * bad.card : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by
  apply le_trans (probEvent_mono (q := fun z => ∃ k, k < n ∧ ∃ point answer,
    z.2[k]? = some ⟨Sum.inr point, answer⟩ ∧ answer ∈ bad) ?_)
  · exact structured_log_mem_before_le oa n bad
  · intro z hz h
    obtain ⟨point, answer, hmem, hbad⟩ := h
    have hlen := log_length_le_of_mem_support_run_simulateQ hbound hz
    obtain ⟨k, hk, hget⟩ := List.mem_iff_getElem.mp hmem
    refine ⟨k, Nat.lt_of_lt_of_le hk hlen, point, answer, ?_, hbad⟩
    simp [hk, hget]

/-- At a fixed mixed-source log ordinal, membership in a bad set selected by
the queried structured point costs at most the uniform cardinality cap. -/
theorem structured_log_dependent_mem_at_le
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (k d : Nat) (bad : Point → Finset F)
    (hcard : ∀ point, (bad point).card ≤ d) :
    Pr[fun z => ∃ point answer,
        z.2[k]? = some ⟨Sum.inr point, answer⟩ ∧ answer ∈ bad point |
      replayFirstRun oa] ≤
      (d : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) := by
  classical
  induction oa using OracleComp.inductionOn generalizing k with
  | pure x =>
      simp [replayFirstRun]
  | query_bind t mx ih =>
      rw [show replayFirstRun (liftM (query t) >>= mx) =
          ((query t : OracleComp (unifSpec + (Point →ₒ F)) _) >>= fun u =>
            (fun z => (z.1, (⟨t, u⟩ :
              (i : (unifSpec + (Point →ₒ F)).Domain) ×
                (unifSpec + (Point →ₒ F)).Range i) :: z.2)) <$>
              replayFirstRun (mx u)) by
        unfold replayFirstRun
        exact OracleComp.run_simulateQ_loggingOracle_query_bind t mx]
      rw [probEvent_bind_eq_tsum]
      simp_rw [probEvent_map, Function.comp_def]
      cases k with
      | zero =>
          cases t with
          | inl _ => simp
          | inr point =>
              calc
                ∑' x, Pr[= x | (liftM ((unifSpec + (Point →ₒ F)).query
                      (Sum.inr point)) :
                        OracleComp (unifSpec + (Point →ₒ F)) F)] *
                    Pr[fun z => ∃ point' answer,
                        ((⟨Sum.inr point, x⟩ :
                          (i : (unifSpec + (Point →ₒ F)).Domain) ×
                            (unifSpec + (Point →ₒ F)).Range i) :: z.2)[0]? =
                            some ⟨Sum.inr point', answer⟩ ∧
                              answer ∈ bad point' |
                      replayFirstRun (mx x)]
                    ≤ ∑' x : F, (Fintype.card F : ℝ≥0∞)⁻¹ *
                        (if x ∈ bad point then 1 else 0) := by
                      apply ENNReal.tsum_le_tsum
                      intro x
                      have hprob : Pr[= x | (liftM
                          ((unifSpec + (Point →ₒ F)).query (Sum.inr point)) :
                            OracleComp (unifSpec + (Point →ₒ F)) F)] =
                          (Fintype.card F : ℝ≥0∞)⁻¹ := by
                        have hp := probOutput_query
                          (spec := unifSpec + (Point →ₒ F)) (Sum.inr point) x
                        exact hp.trans (by
                          congr
                          exact Subsingleton.elim _ _)
                      rw [hprob]
                      by_cases hx : x ∈ bad point
                      · simp only [hx, if_true]
                        exact mul_le_mul' le_rfl probEvent_le_one
                      · have hz : Pr[fun z => ∃ point' answer,
                            ((⟨Sum.inr point, x⟩ :
                              (i : (unifSpec + (Point →ₒ F)).Domain) ×
                                (unifSpec + (Point →ₒ F)).Range i) :: z.2)[0]? =
                                some ⟨Sum.inr point', answer⟩ ∧
                                  answer ∈ bad point' |
                          replayFirstRun (mx x)] = 0 := by
                            apply probEvent_eq_zero
                            intro z _ h
                            obtain ⟨point', answer, heq, hbad⟩ := h
                            simp only [List.getElem?_cons_zero,
                              Option.some_inj] at heq
                            cases heq
                            exact hx hbad
                        rw [hz]
                        simp [hx]
                _ = ((bad point).card : ℝ≥0∞) /
                    (Fintype.card F : ℝ≥0∞) := by
                      rw [ENNReal.tsum_mul_left,
                        tsum_eq_sum (s := Finset.univ) (by simp),
                        Finset.sum_ite, Finset.sum_const_zero, add_zero,
                        Finset.sum_const, nsmul_eq_mul, div_eq_mul_inv,
                        mul_comm]
                      simp
                _ ≤ (d : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) := by
                      gcongr
                      exact_mod_cast hcard point
      | succ k =>
          simp only [List.getElem?_cons_succ]
          calc
            ∑' u, Pr[= u |
                  (query t : OracleComp (unifSpec + (Point →ₒ F)) _)] *
                Pr[fun z => ∃ point answer,
                    z.2[k]? = some ⟨Sum.inr point, answer⟩ ∧
                      answer ∈ bad point |
                  replayFirstRun (mx u)]
              ≤ ∑' u, Pr[= u |
                    (query t : OracleComp (unifSpec + (Point →ₒ F)) _)] *
                  ((d : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) :=
                ENNReal.tsum_le_tsum fun u =>
                  mul_le_mul' le_rfl (ih u k)
            _ = (∑' u, Pr[= u |
                    (query t : OracleComp (unifSpec + (Point →ₒ F)) _)]) *
                  ((d : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) :=
                ENNReal.tsum_mul_right
            _ ≤ 1 * ((d : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) :=
                mul_le_mul' tsum_probOutput_le_one le_rfl
            _ = (d : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) := one_mul _

/-- Union bound over the first `n` structured log ordinals when each point
selects its own bad set of cardinality at most `d`. -/
theorem structured_log_dependent_mem_before_le
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (n d : Nat) (bad : Point → Finset F)
    (hcard : ∀ point, (bad point).card ≤ d) :
    Pr[fun z => ∃ k, k < n ∧ ∃ point answer,
        z.2[k]? = some ⟨Sum.inr point, answer⟩ ∧ answer ∈ bad point |
      replayFirstRun oa] ≤
      (((n * d : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by
  classical
  let E : Nat → (α × QueryLog (unifSpec + (Point →ₒ F))) → Prop :=
    fun k z => ∃ point answer,
      z.2[k]? = some ⟨Sum.inr point, answer⟩ ∧ answer ∈ bad point
  calc
    Pr[fun z => ∃ k, k < n ∧ E k z | replayFirstRun oa]
        = Pr[fun z => ∃ k ∈ Finset.range n, E k z |
            replayFirstRun oa] := by
          congr 1
          funext z
          apply propext
          simp only [Finset.mem_range]
    _ ≤ ∑ k ∈ Finset.range n, Pr[E k | replayFirstRun oa] :=
      probEvent_exists_finset_le_sum (Finset.range n) (replayFirstRun oa) E
    _ ≤ ∑ _k ∈ Finset.range n,
        ((d : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by
      exact Finset.sum_le_sum fun k _ =>
        structured_log_dependent_mem_at_le oa k d bad hcard
    _ = (((n * d : Nat) : ℝ≥0∞) /
        (Fintype.card F : ℝ≥0∞)) := by
      rw [Finset.sum_const, Finset.card_range, nsmul_eq_mul,
        div_eq_mul_inv]
      push_cast
      rw [div_eq_mul_inv]
      simp [mul_assoc]

/-- A total query bound extends the point-dependent ordinal bound to every
structured entry in the complete query log. -/
theorem structured_log_dependent_mem_le
    [(unifSpec + (Point →ₒ F)).DecidableEq]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (n d : Nat) (hbound : IsTotalQueryBound oa n)
    (bad : Point → Finset F) (hcard : ∀ point, (bad point).card ≤ d) :
    Pr[fun z => ∃ point answer,
        (⟨Sum.inr point, answer⟩ :
          (i : (unifSpec + (Point →ₒ F)).Domain) ×
            (unifSpec + (Point →ₒ F)).Range i) ∈ z.2 ∧
          answer ∈ bad point |
      replayFirstRun oa] ≤
      (((n * d : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by
  apply le_trans (probEvent_mono (q := fun z =>
    ∃ k, k < n ∧ ∃ point answer,
      z.2[k]? = some ⟨Sum.inr point, answer⟩ ∧ answer ∈ bad point) ?_)
  · exact structured_log_dependent_mem_before_le oa n d bad hcard
  · intro z hz h
    obtain ⟨point, answer, hmem, hbad⟩ := h
    have hlen := log_length_le_of_mem_support_run_simulateQ hbound hz
    obtain ⟨k, hk, hget⟩ := List.mem_iff_getElem.mp hmem
    refine ⟨k, Nat.lt_of_lt_of_le hk hlen, point, answer, ?_, hbad⟩
    simp [hk, hget]

end

end Ipp
