import Ipp.Cost
import Ipp.Extracted.SyntheticDivision
import Mathlib.Tactic

/-!
Exact algebraic equalities used by the v1-preserving prover reductions.
Operation-count reductions are proved by the executable schedules in
`Ipp.Cost`; this module proves that the removed terms preserve their values.
-/

namespace Ipp.Optimization

open scoped BigOperators

section PairingCoalescing

variable {F G1 G2 GT : Type}
  [Field F]
  [AddCommGroup G1] [Module F G1]
  [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]

/-- Pairing a repeated left message with many keys equals pairing it once
with their sum. -/
theorem repeated_left_pairing_exact
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (message : G1) (keys : List G2) :
    (keys.map (fun key => e message key)).sum = e message keys.sum := by
  induction keys with
  | nil => simp
  | cons key keys ih => simp [ih]

/-- Pairing many keys with a repeated right message has the symmetric exact
coalescing rule. -/
theorem repeated_right_pairing_exact
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (keys : List G1) (message : G2) :
    (keys.map (fun key => e key message)).sum = e keys.sum message := by
  induction keys with
  | nil => simp
  | cons key keys ih => simp [ih]

end PairingCoalescing

section SharedPairingPreparation

variable {G1 G2 P1 P2 GT : Type}

def roundPairingProducts
    (pair : List G1 → List G2 → GT)
    (a c ckW : List G1) (b ckV : List G2) : GT × GT × GT × GT :=
  (pair a ckV, pair ckW b, pair a b, pair c ckV)

/-- Preparing each unique vector once preserves all four independent pairing
outputs when the prepared kernel preserves one pairing product. -/
theorem shared_pairing_preparation_exact
    (pair : List G1 → List G2 → GT)
    (prepareG1 : List G1 → P1) (prepareG2 : List G2 → P2)
    (pairPrepared : P1 → P2 → GT)
    (hpair : ∀ left right,
      pairPrepared (prepareG1 left) (prepareG2 right) = pair left right)
    (a c ckW : List G1) (b ckV : List G2) :
    (pairPrepared (prepareG1 a) (prepareG2 ckV),
      pairPrepared (prepareG1 ckW) (prepareG2 b),
      pairPrepared (prepareG1 a) (prepareG2 b),
      pairPrepared (prepareG1 c) (prepareG2 ckV)) =
      roundPairingProducts pair a c ckW b ckV := by
  simp [roundPairingProducts, hpair]

end SharedPairingPreparation

section BatchInversion

variable {F : Type} [Field F]

/-- The algebraic value recovered for one lane by Montgomery batch inversion. -/
def batchInverseAt {n : Nat} (values : Fin n → F) (i : Fin n) : F :=
  (∏ j, values j)⁻¹ * ∏ j ∈ Finset.univ.erase i, values j

/-- A single total-product inversion recovers every individual inverse when
all inputs pass the chronological nonzero precheck. -/
theorem batch_inverse_at_exact {n : Nat} (values : Fin n → F)
    (hnonzero : ∀ i, values i ≠ 0) (i : Fin n) :
    batchInverseAt values i = (values i)⁻¹ := by
  classical
  have hothers : (∏ j ∈ Finset.univ.erase i, values j) ≠ 0 := by
    exact Finset.prod_ne_zero_iff.mpr fun j _ => hnonzero j
  rw [batchInverseAt,
    ← Finset.prod_erase_mul Finset.univ values (Finset.mem_univ i)]
  field_simp [hothers, hnonzero i]

end BatchInversion

section StreamedPublicInputFold

variable {F : Type} [CommSemiring F]

def streamedPowers (r : F) : Nat → F → List F
  | 0, _ => []
  | n + 1, power => power :: streamedPowers r n (power * r)

def streamedWeightedSum (r : F) : F → List F → F
  | _, [] => 0
  | power, value :: values =>
      value * power + streamedWeightedSum r (power * r) values

def materializedWeightedSum (r power : F) (values : List F) : F :=
  (List.zipWith (· * ·) values (streamedPowers r values.length power)).sum

/-- Streaming a coefficient and a row at a time equals weighting by the
materialized coefficient vector. -/
theorem streamed_weighted_sum_exact (r power : F) (values : List F) :
    streamedWeightedSum r power values = materializedWeightedSum r power values := by
  induction values generalizing power with
  | nil => simp [streamedWeightedSum, materializedWeightedSum, streamedPowers]
  | cons value values ih =>
      simp [streamedWeightedSum, materializedWeightedSum, streamedPowers, ih]

def streamedTerminalPower (r : F) : Nat → F → F
  | 0, power => power
  | n + 1, power => streamedTerminalPower r n (power * r)

/-- The post-loop coefficient is the declared initial power times `r^rows`. -/
theorem streamed_terminal_power_exact (r power : F) (rows : Nat) :
    streamedTerminalPower r rows power = power * r ^ rows := by
  induction rows generalizing power with
  | zero => simp [streamedTerminalPower]
  | succ rows ih =>
      rw [streamedTerminalPower, ih, pow_succ]
      ring

end StreamedPublicInputFold

section EvenKzgQuotient

open Polynomial

variable {F : Type} [Field F]

/-- Quotient specialized to `P(X) = Q(X²)`. -/
noncomputable def evenOpeningQuotient (q : F[X]) (z : F) : F[X] :=
  (X + C z) * ((q /ₘ (X - C (z ^ 2))).comp (X ^ 2))

private theorem X_sub_C_mul_divByMonic (p : F[X]) (a : F) :
    (X - C a) * (p /ₘ (X - C a)) = p - C (p.eval a) := by
  have h := modByMonic_add_div p (X - C a)
  rw [modByMonic_X_sub_C_eq_C_eval] at h
  rw [eq_sub_iff_add_eq]
  simpa [add_comm] using h

/-- The even-polynomial construction returns exactly the same quotient as
dense synthetic division by `X - z`. -/
theorem even_opening_quotient_exact (q : F[X]) (z : F) :
    evenOpeningQuotient q z =
      q.comp (X ^ 2) /ₘ (X - C z) := by
  apply mul_left_cancel₀ (X_sub_C_ne_zero z)
  rw [evenOpeningQuotient]
  have hcompact := X_sub_C_mul_divByMonic q (z ^ 2)
  have hdense := X_sub_C_mul_divByMonic (q.comp (X ^ 2)) z
  calc
    (X - C z) * ((X + C z) *
        (q /ₘ (X - C (z ^ 2))).comp (X ^ 2)) =
      ((X - C (z ^ 2)) * (q /ₘ (X - C (z ^ 2)))).comp
        (X ^ 2) := by
          simp only [Polynomial.mul_comp, Polynomial.sub_comp,
            Polynomial.X_comp, Polynomial.C_comp]
          rw [map_pow]
          ring
    _ = (q - C (q.eval (z ^ 2))).comp (X ^ 2) := by rw [hcompact]
    _ = q.comp (X ^ 2) - C ((q.comp (X ^ 2)).eval z) := by simp
    _ = (X - C z) * (q.comp (X ^ 2) /ₘ (X - C z)) := hdense.symm

end EvenKzgQuotient

section KzgZeroTerm

variable {F G : Type}
  [Semiring F]
  [AddCommMonoid G] [Module F G]

def listMsm (bases : List G) (scalars : List F) : G :=
  (List.zipWith (fun base scalar => scalar • base) bases scalars).sum

/-- Appending the zero coefficient retained by the semantic KZG witness does
not change the opening MSM. -/
theorem omit_trailing_zero_msm_exact
    (bases : List G) (scalars : List F) (base : G)
    (hlength : bases.length = scalars.length) :
    listMsm (bases ++ [base]) (scalars ++ [0]) = listMsm bases scalars := by
  simp [listMsm, List.zipWith_append, hlength]

end KzgZeroTerm

section SharedGtFold

variable {F G : Type}
  [Field F]
  [AddCommGroup G] [Module F G]

/-- One chronological GIPA fold record: left, right, inverse challenge, raw
challenge. -/
abbrev FoldRecord := G × G × F × F

def sequentialFold : G → List (FoldRecord (F := F) (G := G)) → G
  | current, [] => current
  | current, (left, right, inverse, raw) :: tail =>
      sequentialFold (inverse • left + current + raw • right) tail

def flatFold (root : G) (rounds : List (FoldRecord (F := F) (G := G))) : G :=
  root + (rounds.map fun (left, right, inverse, raw) =>
    inverse • left + raw • right).sum

/-- Deferring every chronological fold into one multi-scalar sum is exactly
equal to the historical two-scalar-actions-per-round recurrence. -/
theorem shared_gt_fold_exact
    (root : G) (rounds : List (FoldRecord (F := F) (G := G))) :
    sequentialFold root rounds = flatFold root rounds := by
  induction rounds generalizing root with
  | nil => simp [sequentialFold, flatFold]
  | cons record rounds ih =>
      rcases record with ⟨left, right, inverse, raw⟩
      simp [sequentialFold, flatFold, ih, add_assoc, add_comm]

/-- Four fold lanes with one challenge schedule. Each lane may have distinct
left and right bases, but the inverse/raw scalar pair is shared. -/
abbrev FourLaneRound := (Fin 4 → G × G) × F × F

def fourLaneRecords
    (rounds : List (FourLaneRound (F := F) (G := G))) (lane : Fin 4) :
    List (FoldRecord (F := F) (G := G)) :=
  rounds.map fun round =>
    ((round.1 lane).1, (round.1 lane).2, round.2.1, round.2.2)

def sequentialFourLaneFold
    (roots : Fin 4 → G) (rounds : List (FourLaneRound (F := F) (G := G))) :
    Fin 4 → G :=
  fun lane => sequentialFold (roots lane) (fourLaneRecords rounds lane)

def flatFourLaneFold
    (roots : Fin 4 → G) (rounds : List (FourLaneRound (F := F) (G := G))) :
    Fin 4 → G :=
  fun lane => flatFold (roots lane) (fourLaneRecords rounds lane)

/-- Reusing one scalar schedule for all four GT lanes preserves every lane's
chronological fold result. -/
theorem shared_four_lane_fold_exact
    (roots : Fin 4 → G) (rounds : List (FourLaneRound (F := F) (G := G))) :
    sequentialFourLaneFold roots rounds = flatFourLaneFold roots rounds := by
  funext lane
  exact shared_gt_fold_exact (roots lane) (fourLaneRecords rounds lane)

end SharedGtFold

#print axioms repeated_left_pairing_exact
#print axioms repeated_right_pairing_exact
#print axioms shared_pairing_preparation_exact
#print axioms batch_inverse_at_exact
#print axioms streamed_weighted_sum_exact
#print axioms streamed_terminal_power_exact
#print axioms even_opening_quotient_exact
#print axioms omit_trailing_zero_msm_exact
#print axioms shared_gt_fold_exact
#print axioms shared_four_lane_fold_exact

end Ipp.Optimization
