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

end SharedGtFold

#print axioms repeated_left_pairing_exact
#print axioms repeated_right_pairing_exact
#print axioms omit_trailing_zero_msm_exact
#print axioms shared_gt_fold_exact

end Ipp.Optimization
