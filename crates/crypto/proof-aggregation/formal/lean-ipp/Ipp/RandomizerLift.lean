/-
U1: randomizer lift — from acceptance of the r-randomized aggregate equation
to the per-index Groth16 equations, via the Schwartz-Zippel-style argument
over the aggregation randomizer.

Generic over an F-vector space `M`; instantiated at `M := GT` (and `M := G1`
for the aggregated-`C` lane) by U4. The three results:

* `vandermonde_module_zero` — a module-valued polynomial `∑ᵢ rⁱ • gᵢ` that
  vanishes at `n` distinct points has all coefficients zero.
* `rootSet_card_le` — if some coefficient is nonzero, the set of vanishing
  points is finite with cardinality `≤ n - 1` (the probability carrier).
* `randomizer_lift` — the applied wrapper for U4/U5 (see its docstring).

Proof route: a separating dual functional turns the module polynomial into a
`Polynomial F` with a matching scalar coefficient, then standard root-count
bounds (`eq_zero_of_natDegree_lt_card_of_eval_eq_zero`, `card_roots'`) apply.
-/
import Ipp.Algebra
import Mathlib.LinearAlgebra.Dual.Lemmas
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.Data.Set.Card

namespace Ipp

open scoped BigOperators
open Polynomial

variable {F : Type*} [Field F]
variable {M : Type*} [AddCommGroup M] [Module F M]

/-- Scalar polynomial `∑ᵢ cᵢ · Xⁱ` from `Fin n` coefficients. -/
private noncomputable def coeffPoly {n : ℕ} (c : Fin n → F) : F[X] :=
  ∑ i : Fin n, C (c i) * X ^ (i : ℕ)

private theorem coeffPoly_eval {n : ℕ} (c : Fin n → F) (r : F) :
    (coeffPoly c).eval r = ∑ i : Fin n, r ^ (i : ℕ) * c i := by
  rw [coeffPoly, eval_finsetSum]
  exact Finset.sum_congr rfl fun i _ => by rw [eval_mul, eval_C, eval_pow, eval_X, mul_comm]

private theorem coeffPoly_natDegree_lt {n : ℕ} (c : Fin n → F) (hn : 0 < n) :
    (coeffPoly c).natDegree < n := by
  have hle : (coeffPoly c).natDegree ≤ n - 1 := by
    show (∑ i : Fin n, C (c i) * X ^ (i : ℕ)).natDegree ≤ n - 1
    apply natDegree_sum_le_of_forall_le
    intro i _
    calc (C (c i) * X ^ (i : ℕ)).natDegree
        ≤ (X ^ (i : ℕ) : F[X]).natDegree := natDegree_C_mul_le _ _
      _ = (i : ℕ) := natDegree_X_pow _
      _ ≤ n - 1 := by have := i.isLt; omega
  omega

private theorem coeffPoly_coeff {n : ℕ} (c : Fin n → F) (k : Fin n) :
    (coeffPoly c).coeff (k : ℕ) = c k := by
  simp only [coeffPoly, finsetSum_coeff, coeff_C_mul, coeff_X_pow]
  rw [Finset.sum_eq_single k]
  · simp
  · intro b _ hb
    have : (k : ℕ) ≠ (b : ℕ) := fun h => hb (Fin.ext h.symm)
    simp [this]
  · simp

/-- The Schwartz–Zippel step over a module: from scalar coefficients agreeing
    with a dual functional. -/
private theorem coeff_eq_zero_of_eval {n : ℕ} (c : Fin n → F)
    (r : Fin n → F) (hr : Function.Injective r)
    (h : ∀ j, ∑ i : Fin n, (r j) ^ (i : ℕ) * c i = 0) : ∀ k, c k = 0 := by
  intro k
  have hP : coeffPoly c = 0 :=
    eq_zero_of_natDegree_lt_card_of_eval_eq_zero (coeffPoly c) hr
      (fun j => by rw [coeffPoly_eval]; exact h j)
      (by simpa using coeffPoly_natDegree_lt c (Fin.pos_iff_nonempty.mpr ⟨k⟩))
  have := coeffPoly_coeff c k
  rw [hP] at this
  simpa using this.symm

/-- Vandermonde over a module (spec rows `groth16.randomizer`,
    `groth16.folded-inputs`): if `∑ᵢ rⱼⁱ • gᵢ = 0` at `n` distinct `rⱼ`, then
    every coefficient `gᵢ` is zero. -/
theorem vandermonde_module_zero {n : ℕ} (g : Fin n → M)
    (h : ∃ r : Fin n → F, Function.Injective r ∧ ∀ j, ∑ i : Fin n, (r j) ^ (i : ℕ) • g i = 0) :
    ∀ i, g i = 0 := by
  obtain ⟨r, hr, hz⟩ := h
  intro k
  by_contra hk
  obtain ⟨φ, hφ⟩ := Module.Projective.exists_dual_ne_zero F hk
  -- Apply `φ` to each vanishing evaluation to get a scalar Vandermonde system.
  have hscalar : ∀ j, ∑ i : Fin n, (r j) ^ (i : ℕ) * φ (g i) = 0 := by
    intro j
    have h0 := congrArg φ (hz j)
    rw [map_sum, map_zero] at h0
    simpa only [map_smul, smul_eq_mul] using h0
  exact hφ (coeff_eq_zero_of_eval (fun i : Fin n => φ (g i)) r hr hscalar k)

/-- Root-set cardinality (the probability carrier; spec rows
    `groth16.randomizer`, `groth16.folded-inputs`): if some coefficient is
    nonzero, the vanishing set of `∑ᵢ rⁱ • gᵢ` is finite with card `≤ n - 1`. -/
theorem rootSet_card_le {n : ℕ} (g : Fin n → M) (h : ∃ i, g i ≠ 0) :
    Set.Finite {r : F | ∑ i : Fin n, r ^ (i : ℕ) • g i = 0}
    ∧ Nat.card {r : F | ∑ i : Fin n, r ^ (i : ℕ) • g i = 0} ≤ n - 1 := by
  classical
  obtain ⟨k, hk⟩ := h
  obtain ⟨φ, hφ⟩ := Module.Projective.exists_dual_ne_zero F hk
  set c : Fin n → F := fun i => φ (g i) with hc
  set S : Set F := {r : F | ∑ i : Fin n, r ^ (i : ℕ) • g i = 0} with hS
  -- The scalar polynomial obtained via `φ` is nonzero (its `k`-th coeff is `φ (g k)`).
  have hPne : coeffPoly c ≠ 0 := by
    intro hz
    apply hφ
    have := coeffPoly_coeff c k
    rw [hz] at this
    simpa [hc] using this.symm
  -- `S` embeds into the (finite) root finset of that nonzero polynomial.
  have hsub : S ⊆ ↑(coeffPoly c).roots.toFinset := by
    intro r hr
    simp only [Finset.mem_coe, Multiset.mem_toFinset, mem_roots', ne_eq, hPne,
      not_false_eq_true, true_and, IsRoot.def, coeffPoly_eval]
    have h0 := congrArg φ hr
    rw [map_sum, map_zero] at h0
    simpa only [hc, map_smul, smul_eq_mul] using h0
  have hfin : S.Finite := Set.Finite.subset (Finset.finite_toSet _) hsub
  refine ⟨hfin, ?_⟩
  calc Nat.card S = S.ncard := Nat.card_coe_set_eq S
    _ ≤ (↑(coeffPoly c).roots.toFinset : Set F).ncard :=
        Set.ncard_le_ncard hsub (Finset.finite_toSet _)
    _ = (coeffPoly c).roots.toFinset.card := Set.ncard_coe_finset _
    _ ≤ Multiset.card (coeffPoly c).roots := Multiset.toFinset_card_le _
    _ ≤ (coeffPoly c).natDegree := card_roots' _
    _ ≤ n - 1 := by
        rcases Nat.eq_zero_or_pos n with hn | hn
        · subst hn; exact (k.elim0)
        · have := coeffPoly_natDegree_lt c hn; omega

/-- Randomizer lift (spec rows `groth16.randomizer`, `groth16.folded-inputs`).

    Statement shape chosen for U4/U5 composition: there is a finite "bad set"
    `B` of challenges with `Nat.card B ≤ n - 1` such that any challenge `r ∉ B`
    at which the `r`-weighted discrepancy `∑ᵢ rⁱ • dᵢ` vanishes forces every
    `dᵢ = 0`. U4 supplies the vanishing from aggregate acceptance (with
    `dᵢ := e(Aᵢ,Bᵢ) − ppeRhs i ∈ GT`, and the `G1` lane for `agg_c`); U5
    discharges `r ∉ B` against the Fiat–Shamir challenge distribution, reading
    the failure probability as `Nat.card B / |S| ≤ (n − 1)/|S|` for uniform `r`
    over the challenge space `S`. When some `dᵢ ≠ 0`, `B` is exactly the
    vanishing set (finite by `rootSet_card_le`), so `r ∉ B` contradicts the
    hypothesis — the soundness content: acceptance at a generic `r` is
    impossible unless all discrepancies vanish. -/
theorem randomizer_lift {n : ℕ} (d : Fin n → M) :
    ∃ B : Set F, B.Finite ∧ Nat.card B ≤ n - 1 ∧
      ∀ r : F, r ∉ B → (∑ i : Fin n, r ^ (i : ℕ) • d i = 0) → ∀ i, d i = 0 := by
  by_cases hd : ∀ i, d i = 0
  · exact ⟨∅, Set.finite_empty, by simp, fun _ _ _ => hd⟩
  · rw [not_forall] at hd
    obtain ⟨hfin, hcard⟩ := rootSet_card_le (F := F) d hd
    exact ⟨{r : F | ∑ i : Fin n, r ^ (i : ℕ) • d i = 0}, hfin, hcard,
      fun r hr hvanish => absurd hvanish hr⟩

end Ipp
