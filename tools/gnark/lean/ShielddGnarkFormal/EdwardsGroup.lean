import ShielddGnarkFormal.EdwardsCompleteness

set_option maxHeartbeats 8000000
set_option linter.unusedSectionVars false

/-! Associativity of the complete twisted-Edwards addition `addF` (a = -1,
d non-square) on on-curve points, via offline-computed `linear_combination`
certificates over the three curve equations. Cofactors and the reduced
numerator/denominator forms `na/da = nb/db` were produced by a CAS
(`/tmp/assoc_nested.py`); `da`, `db` factor into the existing completeness
denominators, so they are nonzero on-curve. -/

namespace Shieldd.GnarkFormal.EdwardsBridge

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order)]

private def na_x (p q r : Point) : F := d*p.x^2*p.y*q.x^2*q.y*r.x - d*p.x^2*p.y*q.x*q.y^2*r.y - d*p.x*p.y^2*q.x^2*q.y*r.y + d*p.x*p.y^2*q.x*q.y^2*r.x + p.x*q.x*r.x + p.x*q.y*r.y + p.y*q.x*r.y + p.y*q.y*r.x
private def da_x (p q r : Point) : F := -d^2*p.x^2*p.y^2*q.x^2*q.y^2 + d*p.x^2*q.x*q.y*r.x*r.y + d*p.x*p.y*q.x^2*r.x*r.y + d*p.x*p.y*q.y^2*r.x*r.y + d*p.y^2*q.x*q.y*r.x*r.y + 1
private def nb_x (p q r : Point) : F := d*p.x*q.x^2*q.y*r.x^2*r.y + d*p.x*q.x*q.y^2*r.x*r.y^2 - d*p.y*q.x^2*q.y*r.x*r.y^2 - d*p.y*q.x*q.y^2*r.x^2*r.y + p.x*q.x*r.x + p.x*q.y*r.y + p.y*q.x*r.y + p.y*q.y*r.x
private def db_x (p q r : Point) : F := -d^2*q.x^2*q.y^2*r.x^2*r.y^2 + d*p.x*p.y*q.x^2*r.x*r.y + d*p.x*p.y*q.x*q.y*r.x^2 + d*p.x*p.y*q.x*q.y*r.y^2 + d*p.x*p.y*q.y^2*r.x*r.y + 1
@[reducible] private def cofp_x (p q r : Point) : F := -d^2*p.x*q.x^4*q.y^3*r.x^2*r.y - d^2*p.x*q.x^3*q.y^4*r.x*r.y^2 + d^2*p.y*q.x^4*q.y^3*r.x*r.y^2 + d^2*p.y*q.x^3*q.y^4*r.x^2*r.y - d*p.x*q.x^4*q.y*r.x^2*r.y - d*p.x*q.x^3*q.y^2*r.x^3 - d*p.x*q.x^3*q.y^2*r.x + d*p.x*q.x^2*q.y^3*r.y^3 - d*p.x*q.x^2*q.y^3*r.y + d*p.x*q.x*q.y^4*r.x*r.y^2 + d*p.y*q.x^4*q.y*r.x*r.y^2 + d*p.y*q.x^3*q.y^2*r.y^3 - d*p.y*q.x^3*q.y^2*r.y - d*p.y*q.x^2*q.y^3*r.x^3 - d*p.y*q.x^2*q.y^3*r.x - d*p.y*q.x*q.y^4*r.x^2*r.y
@[reducible] private def cofq_x (p q r : Point) : F := d^2*p.x^2*p.y*q.x^2*q.y*r.x^3*r.y^2 - d^2*p.x^2*p.y*q.x*q.y^2*r.x^2*r.y^3 - d^2*p.x*p.y^2*q.x^2*q.y*r.x^2*r.y^3 + d^2*p.x*p.y^2*q.x*q.y^2*r.x^3*r.y^2 + d*p.x^3*q.x^2*q.y*r.x^2*r.y + d*p.x^3*q.x*q.y^2*r.x*r.y^2 + d*p.x^3*q.x*r.x^3*r.y^2 + d*p.x^3*q.y*r.x^2*r.y^3 - d*p.x^2*p.y*q.x^2*q.y*r.x*r.y^2 - d*p.x^2*p.y*q.x*q.y^2*r.x^2*r.y + d*p.x^2*p.y*q.x*r.x^2*r.y^3 + d*p.x^2*p.y*q.y*r.x^3*r.y^2 - d*p.x*p.y^2*q.x^2*q.y*r.x^2*r.y - d*p.x*p.y^2*q.x*q.y^2*r.x*r.y^2 - d*p.x*p.y^2*q.x*r.x^3*r.y^2 - d*p.x*p.y^2*q.y*r.x^2*r.y^3 + d*p.x*q.x^2*q.y*r.x^2*r.y + d*p.x*q.x*q.y^2*r.x*r.y^2 + d*p.x*q.x*r.x^3*r.y^2 + d*p.x*q.y*r.x^2*r.y^3 + d*p.y^3*q.x^2*q.y*r.x*r.y^2 + d*p.y^3*q.x*q.y^2*r.x^2*r.y - d*p.y^3*q.x*r.x^2*r.y^3 - d*p.y^3*q.y*r.x^3*r.y^2 - d*p.y*q.x^2*q.y*r.x*r.y^2 - d*p.y*q.x*q.y^2*r.x^2*r.y + d*p.y*q.x*r.x^2*r.y^3 + d*p.y*q.y*r.x^3*r.y^2 + p.x^3*q.x*r.x^3 - p.x^3*q.x*r.x*r.y^2 + p.x^3*q.x*r.x + p.x^3*q.y*r.x^2*r.y - p.x^3*q.y*r.y^3 + p.x^3*q.y*r.y + p.x^2*p.y*q.x*r.x^2*r.y - p.x^2*p.y*q.x*r.y^3 + p.x^2*p.y*q.x*r.y + p.x^2*p.y*q.y*r.x^3 - p.x^2*p.y*q.y*r.x*r.y^2 + p.x^2*p.y*q.y*r.x - p.x*p.y^2*q.x*r.x^3 + p.x*p.y^2*q.x*r.x*r.y^2 - p.x*p.y^2*q.x*r.x - p.x*p.y^2*q.y*r.x^2*r.y + p.x*p.y^2*q.y*r.y^3 - p.x*p.y^2*q.y*r.y + p.x*q.x*r.x^3 - p.x*q.x*r.x*r.y^2 + p.x*q.x*r.x + p.x*q.y*r.x^2*r.y - p.x*q.y*r.y^3 + p.x*q.y*r.y - p.y^3*q.x*r.x^2*r.y + p.y^3*q.x*r.y^3 - p.y^3*q.x*r.y - p.y^3*q.y*r.x^3 + p.y^3*q.y*r.x*r.y^2 - p.y^3*q.y*r.x + p.y*q.x*r.x^2*r.y - p.y*q.x*r.y^3 + p.y*q.x*r.y + p.y*q.y*r.x^3 - p.y*q.y*r.x*r.y^2 + p.y*q.y*r.x
@[reducible] private def cofr_x (p q r : Point) : F := -d*p.x^2*p.y*q.x^2*q.y*r.x + d*p.x^2*p.y*q.x*q.y^2*r.y + d*p.x*p.y^2*q.x^2*q.y*r.y - d*p.x*p.y^2*q.x*q.y^2*r.x - p.x^3*q.x^3*r.x - p.x^3*q.x^2*q.y*r.y + p.x^3*q.x*q.y^2*r.x - p.x^3*q.x*r.x + p.x^3*q.y^3*r.y - p.x^3*q.y*r.y - p.x^2*p.y*q.x^3*r.y - p.x^2*p.y*q.x^2*q.y*r.x + p.x^2*p.y*q.x*q.y^2*r.y - p.x^2*p.y*q.x*r.y + p.x^2*p.y*q.y^3*r.x - p.x^2*p.y*q.y*r.x + p.x*p.y^2*q.x^3*r.x + p.x*p.y^2*q.x^2*q.y*r.y - p.x*p.y^2*q.x*q.y^2*r.x + p.x*p.y^2*q.x*r.x - p.x*p.y^2*q.y^3*r.y + p.x*p.y^2*q.y*r.y - p.x*q.x^3*r.x - p.x*q.x^2*q.y*r.y + p.x*q.x*q.y^2*r.x - p.x*q.x*r.x + p.x*q.y^3*r.y - p.x*q.y*r.y + p.y^3*q.x^3*r.y + p.y^3*q.x^2*q.y*r.x - p.y^3*q.x*q.y^2*r.y + p.y^3*q.x*r.y - p.y^3*q.y^3*r.x + p.y^3*q.y*r.x - p.y*q.x^3*r.y - p.y*q.x^2*q.y*r.x + p.y*q.x*q.y^2*r.y - p.y*q.x*r.y + p.y*q.y^3*r.x - p.y*q.y*r.x
private def na_y (p q r : Point) : F := d*p.x^2*p.y*q.x^2*q.y*r.y - d*p.x^2*p.y*q.x*q.y^2*r.x - d*p.x*p.y^2*q.x^2*q.y*r.x + d*p.x*p.y^2*q.x*q.y^2*r.y + p.x*q.x*r.y + p.x*q.y*r.x + p.y*q.x*r.x + p.y*q.y*r.y
private def da_y (p q r : Point) : F := -d^2*p.x^2*p.y^2*q.x^2*q.y^2 - d*p.x^2*q.x*q.y*r.x*r.y - d*p.x*p.y*q.x^2*r.x*r.y - d*p.x*p.y*q.y^2*r.x*r.y - d*p.y^2*q.x*q.y*r.x*r.y + 1
private def nb_y (p q r : Point) : F := -d*p.x*q.x^2*q.y*r.x*r.y^2 - d*p.x*q.x*q.y^2*r.x^2*r.y + d*p.y*q.x^2*q.y*r.x^2*r.y + d*p.y*q.x*q.y^2*r.x*r.y^2 + p.x*q.x*r.y + p.x*q.y*r.x + p.y*q.x*r.x + p.y*q.y*r.y
private def db_y (p q r : Point) : F := -d^2*q.x^2*q.y^2*r.x^2*r.y^2 - d*p.x*p.y*q.x^2*r.x*r.y - d*p.x*p.y*q.x*q.y*r.x^2 - d*p.x*p.y*q.x*q.y*r.y^2 - d*p.x*p.y*q.y^2*r.x*r.y + 1
@[reducible] private def cofp_y (p q r : Point) : F := d^2*p.x*q.x^4*q.y^3*r.x*r.y^2 + d^2*p.x*q.x^3*q.y^4*r.x^2*r.y - d^2*p.y*q.x^4*q.y^3*r.x^2*r.y - d^2*p.y*q.x^3*q.y^4*r.x*r.y^2 + d*p.x*q.x^4*q.y*r.x*r.y^2 + d*p.x*q.x^3*q.y^2*r.y^3 - d*p.x*q.x^3*q.y^2*r.y - d*p.x*q.x^2*q.y^3*r.x^3 - d*p.x*q.x^2*q.y^3*r.x - d*p.x*q.x*q.y^4*r.x^2*r.y - d*p.y*q.x^4*q.y*r.x^2*r.y - d*p.y*q.x^3*q.y^2*r.x^3 - d*p.y*q.x^3*q.y^2*r.x + d*p.y*q.x^2*q.y^3*r.y^3 - d*p.y*q.x^2*q.y^3*r.y + d*p.y*q.x*q.y^4*r.x*r.y^2
@[reducible] private def cofq_y (p q r : Point) : F := d^2*p.x^2*p.y*q.x^2*q.y*r.x^2*r.y^3 - d^2*p.x^2*p.y*q.x*q.y^2*r.x^3*r.y^2 - d^2*p.x*p.y^2*q.x^2*q.y*r.x^3*r.y^2 + d^2*p.x*p.y^2*q.x*q.y^2*r.x^2*r.y^3 - d*p.x^3*q.x^2*q.y*r.x*r.y^2 - d*p.x^3*q.x*q.y^2*r.x^2*r.y + d*p.x^3*q.x*r.x^2*r.y^3 + d*p.x^3*q.y*r.x^3*r.y^2 + d*p.x^2*p.y*q.x^2*q.y*r.x^2*r.y + d*p.x^2*p.y*q.x*q.y^2*r.x*r.y^2 + d*p.x^2*p.y*q.x*r.x^3*r.y^2 + d*p.x^2*p.y*q.y*r.x^2*r.y^3 + d*p.x*p.y^2*q.x^2*q.y*r.x*r.y^2 + d*p.x*p.y^2*q.x*q.y^2*r.x^2*r.y - d*p.x*p.y^2*q.x*r.x^2*r.y^3 - d*p.x*p.y^2*q.y*r.x^3*r.y^2 - d*p.x*q.x^2*q.y*r.x*r.y^2 - d*p.x*q.x*q.y^2*r.x^2*r.y + d*p.x*q.x*r.x^2*r.y^3 + d*p.x*q.y*r.x^3*r.y^2 - d*p.y^3*q.x^2*q.y*r.x^2*r.y - d*p.y^3*q.x*q.y^2*r.x*r.y^2 - d*p.y^3*q.x*r.x^3*r.y^2 - d*p.y^3*q.y*r.x^2*r.y^3 + d*p.y*q.x^2*q.y*r.x^2*r.y + d*p.y*q.x*q.y^2*r.x*r.y^2 + d*p.y*q.x*r.x^3*r.y^2 + d*p.y*q.y*r.x^2*r.y^3 + p.x^3*q.x*r.x^2*r.y - p.x^3*q.x*r.y^3 + p.x^3*q.x*r.y + p.x^3*q.y*r.x^3 - p.x^3*q.y*r.x*r.y^2 + p.x^3*q.y*r.x + p.x^2*p.y*q.x*r.x^3 - p.x^2*p.y*q.x*r.x*r.y^2 + p.x^2*p.y*q.x*r.x + p.x^2*p.y*q.y*r.x^2*r.y - p.x^2*p.y*q.y*r.y^3 + p.x^2*p.y*q.y*r.y - p.x*p.y^2*q.x*r.x^2*r.y + p.x*p.y^2*q.x*r.y^3 - p.x*p.y^2*q.x*r.y - p.x*p.y^2*q.y*r.x^3 + p.x*p.y^2*q.y*r.x*r.y^2 - p.x*p.y^2*q.y*r.x + p.x*q.x*r.x^2*r.y - p.x*q.x*r.y^3 + p.x*q.x*r.y + p.x*q.y*r.x^3 - p.x*q.y*r.x*r.y^2 + p.x*q.y*r.x - p.y^3*q.x*r.x^3 + p.y^3*q.x*r.x*r.y^2 - p.y^3*q.x*r.x - p.y^3*q.y*r.x^2*r.y + p.y^3*q.y*r.y^3 - p.y^3*q.y*r.y + p.y*q.x*r.x^3 - p.y*q.x*r.x*r.y^2 + p.y*q.x*r.x + p.y*q.y*r.x^2*r.y - p.y*q.y*r.y^3 + p.y*q.y*r.y
@[reducible] private def cofr_y (p q r : Point) : F := -d*p.x^2*p.y*q.x^2*q.y*r.y + d*p.x^2*p.y*q.x*q.y^2*r.x + d*p.x*p.y^2*q.x^2*q.y*r.x - d*p.x*p.y^2*q.x*q.y^2*r.y - p.x^3*q.x^3*r.y - p.x^3*q.x^2*q.y*r.x + p.x^3*q.x*q.y^2*r.y - p.x^3*q.x*r.y + p.x^3*q.y^3*r.x - p.x^3*q.y*r.x - p.x^2*p.y*q.x^3*r.x - p.x^2*p.y*q.x^2*q.y*r.y + p.x^2*p.y*q.x*q.y^2*r.x - p.x^2*p.y*q.x*r.x + p.x^2*p.y*q.y^3*r.y - p.x^2*p.y*q.y*r.y + p.x*p.y^2*q.x^3*r.y + p.x*p.y^2*q.x^2*q.y*r.x - p.x*p.y^2*q.x*q.y^2*r.y + p.x*p.y^2*q.x*r.y - p.x*p.y^2*q.y^3*r.x + p.x*p.y^2*q.y*r.x - p.x*q.x^3*r.y - p.x*q.x^2*q.y*r.x + p.x*q.x*q.y^2*r.y - p.x*q.x*r.y + p.x*q.y^3*r.x - p.x*q.y*r.x + p.y^3*q.x^3*r.x + p.y^3*q.x^2*q.y*r.y - p.y^3*q.x*q.y^2*r.x + p.y^3*q.x*r.x - p.y^3*q.y^3*r.y + p.y^3*q.y*r.y - p.y*q.x^3*r.x - p.y*q.x^2*q.y*r.y + p.y*q.x*q.y^2*r.x - p.y*q.x*r.x + p.y*q.y^3*r.y - p.y*q.y*r.y

private theorem da_x_ne (p q r : Point) (hp : onCurve p) (hq : onCurve q) (hr : onCurve r) :
    da_x p q r ≠ 0 := by
  have d1 := add_den_plus_ne p q hp hq
  have d2 := add_den_minus_ne p q hp hq
  have hpq := add_onCurve p q hp hq
  have d5 := add_den_plus_ne (addF p q) r hpq hr
  have hfac : da_x p q r = (1 + d * (q.y * p.x) * (q.x * p.y))
      * (1 - d * (q.y * p.x) * (q.x * p.y))
      * (1 + d * (r.y * (addF p q).x) * (r.x * (addF p q).y)) := by
    simp only [da_x, addF]
    field_simp
    ring
  rw [hfac]
  exact mul_ne_zero (mul_ne_zero d1 d2) d5

private theorem db_x_ne (p q r : Point) (hp : onCurve p) (hq : onCurve q) (hr : onCurve r) :
    db_x p q r ≠ 0 := by
  have d3 := add_den_plus_ne q r hq hr
  have d4 := add_den_minus_ne q r hq hr
  have hqr := add_onCurve q r hq hr
  have d7 := add_den_plus_ne p (addF q r) hp hqr
  have hfac : db_x p q r = (1 + d * (r.y * q.x) * (r.x * q.y))
      * (1 - d * (r.y * q.x) * (r.x * q.y))
      * (1 + d * ((addF q r).y * p.x) * ((addF q r).x * p.y)) := by
    simp only [db_x, addF]
    field_simp
    ring
  rw [hfac]
  exact mul_ne_zero (mul_ne_zero d3 d4) d7

/-- Single-addition x-coordinate as a one-denominator fraction (denominator is the
`add_den_plus` completeness term, matched exactly — no nesting). -/
private theorem addF_x_eq (A r : Point) (hA : onCurve A) (hr : onCurve r) :
    (addF A r).x
      = (r.y * A.x + r.x * A.y) / (1 + d * (r.y * A.x) * (r.x * A.y)) := by
  have h := add_den_plus_ne A r hA hr
  rw [eq_div_iff h]
  simp only [addF]
  field_simp

private theorem addF_y_eq (A r : Point) (hA : onCurve A) (hr : onCurve r) :
    (addF A r).y
      = (-(r.y * A.x) - r.x * A.y + (A.y + A.x) * (r.x + r.y))
          / (1 - d * (r.y * A.x) * (r.x * A.y)) := by
  have h := add_den_minus_ne A r hA hr
  rw [eq_div_iff h]
  simp only [addF]
  field_simp

private theorem lhs_x (p q r : Point) (hp : onCurve p) (hq : onCurve q) (hr : onCurve r) :
    (addF (addF p q) r).x = na_x p q r / da_x p q r := by
  have hpq := add_onCurve p q hp hq
  rw [addF_x_eq (addF p q) r hpq hr,
      div_eq_div_iff (add_den_plus_ne (addF p q) r hpq hr) (da_x_ne p q r hp hq hr)]
  have d1 := add_den_plus_ne p q hp hq
  have d2 := add_den_minus_ne p q hp hq
  simp only [addF, na_x, da_x]
  field_simp
  ring

private theorem rhs_x (p q r : Point) (hp : onCurve p) (hq : onCurve q) (hr : onCurve r) :
    (addF p (addF q r)).x = nb_x p q r / db_x p q r := by
  have hqr := add_onCurve q r hq hr
  rw [addF_x_eq p (addF q r) hp hqr,
      div_eq_div_iff (add_den_plus_ne p (addF q r) hp hqr) (db_x_ne p q r hp hq hr)]
  have d3 := add_den_plus_ne q r hq hr
  have d4 := add_den_minus_ne q r hq hr
  simp only [addF, nb_x, db_x]
  field_simp
  ring

theorem addF_assoc_x (p q r : Point) (hp : onCurve p) (hq : onCurve q) (hr : onCurve r) :
    (addF (addF p q) r).x = (addF p (addF q r)).x := by
  rw [lhs_x p q r hp hq hr, rhs_x p q r hp hq hr,
      div_eq_div_iff (da_x_ne p q r hp hq hr) (db_x_ne p q r hp hq hr)]
  simp only [onCurve] at hp hq hr
  have hcp : -(p.x*p.x) + p.y*p.y - (1 + d*(p.x*p.x)*(p.y*p.y)) = 0 := by linear_combination hp
  have hcq : -(q.x*q.x) + q.y*q.y - (1 + d*(q.x*q.x)*(q.y*q.y)) = 0 := by linear_combination hq
  have hcr : -(r.x*r.x) + r.y*r.y - (1 + d*(r.x*r.x)*(r.y*r.y)) = 0 := by linear_combination hr
  simp only [na_x, da_x, nb_x, db_x]
  linear_combination (cofp_x p q r) * hcp + (cofq_x p q r) * hcq + (cofr_x p q r) * hcr

private theorem da_y_ne (p q r : Point) (hp : onCurve p) (hq : onCurve q) (hr : onCurve r) :
    da_y p q r ≠ 0 := by
  have d1 := add_den_plus_ne p q hp hq
  have d2 := add_den_minus_ne p q hp hq
  have hpq := add_onCurve p q hp hq
  have d5 := add_den_minus_ne (addF p q) r hpq hr
  have hfac : da_y p q r = (1 + d * (q.y * p.x) * (q.x * p.y))
      * (1 - d * (q.y * p.x) * (q.x * p.y))
      * (1 - d * (r.y * (addF p q).x) * (r.x * (addF p q).y)) := by
    simp only [da_y, addF]
    field_simp
    ring
  rw [hfac]
  exact mul_ne_zero (mul_ne_zero d1 d2) d5

private theorem db_y_ne (p q r : Point) (hp : onCurve p) (hq : onCurve q) (hr : onCurve r) :
    db_y p q r ≠ 0 := by
  have d3 := add_den_plus_ne q r hq hr
  have d4 := add_den_minus_ne q r hq hr
  have hqr := add_onCurve q r hq hr
  have d7 := add_den_minus_ne p (addF q r) hp hqr
  have hfac : db_y p q r = (1 + d * (r.y * q.x) * (r.x * q.y))
      * (1 - d * (r.y * q.x) * (r.x * q.y))
      * (1 - d * ((addF q r).y * p.x) * ((addF q r).x * p.y)) := by
    simp only [db_y, addF]
    field_simp
    ring
  rw [hfac]
  exact mul_ne_zero (mul_ne_zero d3 d4) d7

private theorem lhs_y (p q r : Point) (hp : onCurve p) (hq : onCurve q) (hr : onCurve r) :
    (addF (addF p q) r).y = na_y p q r / da_y p q r := by
  have hpq := add_onCurve p q hp hq
  rw [addF_y_eq (addF p q) r hpq hr,
      div_eq_div_iff (add_den_minus_ne (addF p q) r hpq hr) (da_y_ne p q r hp hq hr)]
  have d1 := add_den_plus_ne p q hp hq
  have d2 := add_den_minus_ne p q hp hq
  simp only [addF, na_y, da_y]
  field_simp
  ring

private theorem rhs_y (p q r : Point) (hp : onCurve p) (hq : onCurve q) (hr : onCurve r) :
    (addF p (addF q r)).y = nb_y p q r / db_y p q r := by
  have hqr := add_onCurve q r hq hr
  rw [addF_y_eq p (addF q r) hp hqr,
      div_eq_div_iff (add_den_minus_ne p (addF q r) hp hqr) (db_y_ne p q r hp hq hr)]
  have d3 := add_den_plus_ne q r hq hr
  have d4 := add_den_minus_ne q r hq hr
  simp only [addF, nb_y, db_y]
  field_simp
  ring

theorem addF_assoc_y (p q r : Point) (hp : onCurve p) (hq : onCurve q) (hr : onCurve r) :
    (addF (addF p q) r).y = (addF p (addF q r)).y := by
  rw [lhs_y p q r hp hq hr, rhs_y p q r hp hq hr,
      div_eq_div_iff (da_y_ne p q r hp hq hr) (db_y_ne p q r hp hq hr)]
  simp only [onCurve] at hp hq hr
  have hcp : -(p.x*p.x) + p.y*p.y - (1 + d*(p.x*p.x)*(p.y*p.y)) = 0 := by linear_combination hp
  have hcq : -(q.x*q.x) + q.y*q.y - (1 + d*(q.x*q.x)*(q.y*q.y)) = 0 := by linear_combination hq
  have hcr : -(r.x*r.x) + r.y*r.y - (1 + d*(r.x*r.x)*(r.y*r.y)) = 0 := by linear_combination hr
  simp only [na_y, da_y, nb_y, db_y]
  linear_combination (cofp_y p q r) * hcp + (cofq_y p q r) * hcq + (cofr_y p q r) * hcr

/-! ### Abelian group structure on on-curve points -/

/-- Coordinate-wise extensionality for `Point`. -/
private theorem pext {p q : Point} (hx : p.x = q.x) (hy : p.y = q.y) : p = q := by
  cases p; cases q; cases hx; cases hy; rfl

/-- Commutativity of `addF` (numerators/denominators are symmetric in `p,q`). -/
theorem addF_comm (p q : Point) : addF p q = addF q p := by
  simp only [addF]
  refine pext ?_ ?_ <;> · simp only; ring

/-- `⟨0,1⟩` is a left identity. -/
theorem addF_id_left (p : Point) : addF ⟨0, 1⟩ p = p := by
  simp only [addF]
  refine pext ?_ ?_ <;> · simp only; ring

/-- `negF p = ⟨-p.x, p.y⟩` is a right inverse on the curve. -/
theorem addF_neg_right (p : Point) (hp : onCurve p) : addF p (negF p) = ⟨0, 1⟩ := by
  have hd : (1 : F) - d * (p.y * p.x) * (-p.x * p.y) ≠ 0 := by
    have := add_den_minus_ne p (negF p) hp (neg_onCurve p hp)
    simpa [negF] using this
  simp only [onCurve] at hp
  refine pext ?_ ?_
  · simp only [addF, negF]
    rw [mul_eq_zero]; left; ring
  · simp only [addF, negF]
    rw [mul_inv_eq_one₀ hd]
    linear_combination hp

/-- Point-level associativity from the per-coordinate proofs. -/
theorem addF_assoc (p q r : Point) (hp : onCurve p) (hq : onCurve q) (hr : onCurve r) :
    addF (addF p q) r = addF p (addF q r) :=
  pext (addF_assoc_x p q r hp hq hr) (addF_assoc_y p q r hp hq hr)

/-- Carrier of the curve group: on-curve points. -/
def OnCurvePoint := {p : Point // onCurve p}

namespace OnCurvePoint

@[ext] theorem ext {p q : OnCurvePoint} (h : p.1 = q.1) : p = q := Subtype.ext h

instance : Add OnCurvePoint := ⟨fun p q => ⟨addF p.1 q.1, add_onCurve p.1 q.1 p.2 q.2⟩⟩
instance : Zero OnCurvePoint := ⟨⟨⟨0, 1⟩, identity_onCurve⟩⟩
instance : Neg OnCurvePoint := ⟨fun p => ⟨negF p.1, neg_onCurve p.1 p.2⟩⟩

@[simp] theorem add_val (p q : OnCurvePoint) : (p + q).1 = addF p.1 q.1 := rfl
@[simp] theorem zero_val : (0 : OnCurvePoint).1 = ⟨0, 1⟩ := rfl
@[simp] theorem neg_val (p : OnCurvePoint) : (-p).1 = negF p.1 := rfl

instance : AddCommGroup OnCurvePoint where
  add_assoc a b c := ext (by simp [addF_assoc a.1 b.1 c.1 a.2 b.2 c.2])
  zero_add a := ext (by simp [addF_id_left])
  add_zero a := ext (by simp [addF_comm a.1 ⟨0,1⟩, addF_id_left])
  neg_add_cancel a := ext (by simp [addF_comm (negF a.1) a.1, addF_neg_right a.1 a.2])
  add_comm a b := ext (by simp [addF_comm])
  nsmul := nsmulRec
  zsmul := zsmulRec

/-! ### The 2-torsion point and the odd-order no-shift lemma -/

/-- The unique non-identity 2-torsion point `(0,-1)`. -/
def twoTorsion : OnCurvePoint := ⟨⟨0, -1⟩, by simp only [onCurve]; ring⟩

@[simp] theorem twoTorsion_val : twoTorsion.1 = ⟨0, -1⟩ := rfl

/-- `(0,-1)` has order two: `T + T = 0`. -/
theorem twoTorsion_add_self : twoTorsion + twoTorsion = 0 := by
  apply ext
  simp only [add_val, zero_val, twoTorsion_val]
  refine pext ?_ ?_ <;> · simp only [addF]; ring

/-- The 2-torsion shift `(-x,-y)` of an on-curve point `p` is `p + T`. -/
theorem neg_neg_eq_add_twoTorsion (p : OnCurvePoint) :
    (⟨⟨-p.1.x, -p.1.y⟩, by have := p.2; simp only [onCurve] at this ⊢; ring_nf; ring_nf at this; linear_combination this⟩ : OnCurvePoint)
      = p + twoTorsion := by
  apply ext
  simp only [add_val, twoTorsion_val]
  refine pext ?_ ?_
  · simp only [addF]; field_simp
  · simp only [addF]; field_simp

/-- char ≠ 2: `(-1 : F) ≠ 1`. -/
theorem neg_one_ne_one : (-1 : F) ≠ 1 := by
  intro h
  have h2 : ((2 : ℕ) : F) = 0 := by push_cast; linear_combination -h
  rw [ZMod.natCast_zmod_eq_zero_iff_dvd] at h2
  have := Nat.le_of_dvd (by norm_num) h2
  exact absurd this (by decide)

theorem twoTorsion_ne_zero : twoTorsion ≠ 0 := by
  intro h
  have : (-1 : F) = 1 := congrArg (fun p => p.1.y) h
  exact neg_one_ne_one this

/-- `T` has order dividing 2, so an odd multiple of it is itself. -/
theorem smul_twoTorsion_odd (r : ℕ) (hr : Odd r) : r • twoTorsion = twoTorsion := by
  obtain ⟨k, hk⟩ := hr
  subst hk
  have h2 : (2 : ℕ) • twoTorsion = 0 := by
    rw [two_smul]; exact twoTorsion_add_self
  rw [add_smul, one_smul, mul_comm, mul_smul, h2, smul_zero, zero_add]

/-- The reusable no-2-torsion-shift fact for any `r`-torsion subgroup with `r`
odd: if `p` and its shift `p + T` are both `r`-torsion, contradiction. -/
theorem noTwoTorsionShift_of_torsion (r : ℕ) (hr : Odd r)
    (p : OnCurvePoint) (hp : r • p = 0) (hshift : r • (p + twoTorsion) = 0) : False := by
  rw [smul_add, hp, zero_add, smul_twoTorsion_odd r hr] at hshift
  exact twoTorsion_ne_zero hshift
