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

end

end Ipp
