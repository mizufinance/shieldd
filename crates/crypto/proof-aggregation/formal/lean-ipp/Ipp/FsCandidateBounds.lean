/-
Candidate-pair bounds for structured random-function misses. A candidate is
fixed by an earlier queried point before the matching fresh answer is sampled.
-/
import Ipp.FsMissBounds

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp

noncomputable section

variable {Point F α : Type} [Fintype F]
  [IsUniformSpec (unifSpec + (Point →ₒ F))]

/-- A scalar carried by an earlier queried point matches the later (or same)
fresh answer with probability at most `1/|F|`. -/
theorem structured_point_candidate_at_le
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (candidate : Point → Option F) (i j : Nat) (hij : i ≤ j) :
    Pr[fun z => ∃ point answer,
        (fsPointTrace z.2)[i]? = some point ∧
        candidate point = some answer ∧
        (structuredAnswers z.2)[j]? = some answer | replayFirstRun oa] ≤
      (Fintype.card F : ℝ≥0∞)⁻¹ := by
  classical
  letI : DecidableEq F := Classical.decEq F
  letI : DecidableEq Point := Classical.decEq Point
  induction oa using OracleComp.inductionOn generalizing i j with
  | pure x =>
      simp [replayFirstRun, fsPointTrace, structuredAnswers]
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
          simp only [fsPointTrace, structuredAnswers]
          calc
            ∑' u, Pr[= u | (liftM ((unifSpec + (Point →ₒ F)).query (Sum.inl n)) :
                    OracleComp (unifSpec + (Point →ₒ F)) _)] *
                Pr[fun z => ∃ point answer,
                    (fsPointTrace z.2)[i]? = some point ∧
                    candidate point = some answer ∧
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
      | inr queried =>
          cases i with
          | zero =>
              cases hcandidate : candidate queried with
              | none =>
                  simp [fsPointTrace, structuredAnswers, hcandidate]
              | some guess =>
                  cases j with
                  | zero =>
                      simp only [fsPointTrace, structuredAnswers,
                        List.getElem?_cons_zero]
                      calc
                        ∑' x, Pr[= x | (liftM
                                ((unifSpec + (Point →ₒ F)).query (Sum.inr queried)) :
                                OracleComp (unifSpec + (Point →ₒ F)) F)] *
                            Pr[fun z => ∃ point answer, some queried = some point ∧
                                candidate point = some answer ∧ some x = some answer |
                              replayFirstRun (mx x)]
                          ≤ ∑' x : F, (Fintype.card F : ℝ≥0∞)⁻¹ *
                              (if x = guess then 1 else 0) := by
                            apply ENNReal.tsum_le_tsum
                            intro x
                            have hprob : Pr[= x | (liftM
                                ((unifSpec + (Point →ₒ F)).query (Sum.inr queried)) :
                                  OracleComp (unifSpec + (Point →ₒ F)) F)] =
                                (Fintype.card F : ℝ≥0∞)⁻¹ := by
                              have hp := probOutput_query
                                (spec := unifSpec + (Point →ₒ F)) (Sum.inr queried) x
                              exact hp.trans (by congr; exact Subsingleton.elim _ _)
                            rw [hprob]
                            by_cases hx : x = guess
                            · subst x
                              simp [hcandidate]
                            · have hgx : guess ≠ x := Ne.symm hx
                              simp [hcandidate, hx, hgx]
                        _ = (Fintype.card F : ℝ≥0∞)⁻¹ := by
                            rw [ENNReal.tsum_mul_left,
                              tsum_eq_sum (s := {guess}) (by simp)]
                            simp
                  | succ j =>
                      simp only [fsPointTrace, structuredAnswers,
                        List.getElem?_cons_zero, List.getElem?_cons_succ]
                      calc
                        ∑' x, Pr[= x | (liftM
                                ((unifSpec + (Point →ₒ F)).query (Sum.inr queried)) :
                                OracleComp (unifSpec + (Point →ₒ F)) F)] *
                            Pr[fun z => ∃ point answer, some queried = some point ∧
                                candidate point = some answer ∧
                                (structuredAnswers z.2)[j]? = some answer |
                              replayFirstRun (mx x)]
                          ≤ ∑' x, Pr[= x | (liftM
                                ((unifSpec + (Point →ₒ F)).query (Sum.inr queried)) :
                                OracleComp (unifSpec + (Point →ₒ F)) F)] *
                              (Fintype.card F : ℝ≥0∞)⁻¹ := by
                            apply ENNReal.tsum_le_tsum
                            intro x
                            apply mul_le_mul' le_rfl
                            simpa [hcandidate] using
                              (structured_answer_mem_at_le (mx x) j ({guess} : Finset F))
                        _ = (∑' x, Pr[= x | (liftM
                                ((unifSpec + (Point →ₒ F)).query (Sum.inr queried)) :
                                OracleComp (unifSpec + (Point →ₒ F)) F)]) *
                              (Fintype.card F : ℝ≥0∞)⁻¹ := ENNReal.tsum_mul_right
                        _ ≤ 1 * (Fintype.card F : ℝ≥0∞)⁻¹ :=
                            mul_le_mul' tsum_probOutput_le_one le_rfl
                        _ = (Fintype.card F : ℝ≥0∞)⁻¹ := one_mul _
          | succ i =>
              cases j with
              | zero => omega
              | succ j =>
                  have hij' : i ≤ j := Nat.succ_le_succ_iff.mp hij
                  simp only [fsPointTrace, structuredAnswers,
                    List.getElem?_cons_succ]
                  calc
                    ∑' u, Pr[= u | (liftM
                            ((unifSpec + (Point →ₒ F)).query (Sum.inr queried)) :
                            OracleComp (unifSpec + (Point →ₒ F)) F)] *
                        Pr[fun z => ∃ point answer,
                            (fsPointTrace z.2)[i]? = some point ∧
                            candidate point = some answer ∧
                            (structuredAnswers z.2)[j]? = some answer |
                          replayFirstRun (mx u)]
                      ≤ ∑' u, Pr[= u | (liftM
                            ((unifSpec + (Point →ₒ F)).query (Sum.inr queried)) :
                            OracleComp (unifSpec + (Point →ₒ F)) F)] *
                          (Fintype.card F : ℝ≥0∞)⁻¹ :=
                        ENNReal.tsum_le_tsum fun u =>
                          mul_le_mul' le_rfl (ih u i j hij')
                    _ = (∑' u, Pr[= u | (liftM
                            ((unifSpec + (Point →ₒ F)).query (Sum.inr queried)) :
                            OracleComp (unifSpec + (Point →ₒ F)) F)]) *
                          (Fintype.card F : ℝ≥0∞)⁻¹ := ENNReal.tsum_mul_right
                    _ ≤ 1 * (Fintype.card F : ℝ≥0∞)⁻¹ :=
                        mul_le_mul' tsum_probOutput_le_one le_rfl
                    _ = (Fintype.card F : ℝ≥0∞)⁻¹ := one_mul _

/-- Union bound over all ordered candidate-point/answer pairs among the first
`n` structured misses. -/
theorem structured_point_candidate_before_le
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (candidate : Point → Option F) (n : Nat) :
    Pr[fun z => ∃ i, i < n ∧ ∃ j, j < n ∧ i ≤ j ∧ ∃ point answer,
        (fsPointTrace z.2)[i]? = some point ∧
        candidate point = some answer ∧
        (structuredAnswers z.2)[j]? = some answer | replayFirstRun oa] ≤
      (((n ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by
  classical
  let E : Nat → Nat → (α × QueryLog (unifSpec + (Point →ₒ F))) → Prop :=
    fun i j z => i ≤ j ∧ ∃ point answer,
      (fsPointTrace z.2)[i]? = some point ∧
      candidate point = some answer ∧
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
        by_cases hij : i ≤ j
        · apply le_trans (probEvent_mono (q := fun z => ∃ point answer,
              (fsPointTrace z.2)[i]? = some point ∧
              candidate point = some answer ∧
              (structuredAnswers z.2)[j]? = some answer) (by
                intro z _ h
                exact h.2))
          exact structured_point_candidate_at_le oa candidate i j hij
        · have hz : Pr[E i j | replayFirstRun oa] = 0 := by
            apply probEvent_eq_zero
            intro z _ h
            exact hij h.1
          rw [hz]
          exact bot_le
    _ = (((n ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by
        simp [div_eq_mul_inv, pow_two, mul_assoc]

end

end Ipp
