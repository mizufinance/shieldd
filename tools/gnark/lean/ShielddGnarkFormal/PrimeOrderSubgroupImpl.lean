import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.EdwardsGroup

set_option linter.unusedSectionVars false

/-! Concrete decaf377 prime-order subgroup.

The membership predicate is the `r`-torsion `E[r]` of the self-contained
twisted-Edwards `AddCommGroup` (`EdwardsGroup.lean`), where `r` is the decaf377
prime subgroup order. Closure and the key `noTwoTorsionShift` fact are PROVED
here (the latter via the odd-order engine `noTwoTorsionShift_of_torsion`),
leaving only the numeric generator/encode membership obligations for assembly. -/

namespace Shieldd.GnarkFormal.Decaf377Assumptions

open Shieldd.GnarkFormal.EdwardsBridge

variable [Fact (Nat.Prime Extracted.DecafAssertEquivalent.Order)]
variable [Fact (Nat.Prime Extracted.DecafCompressToField.Order)]
variable [Fact (Nat.Prime Extracted.DecafEncodeToCurve.Order)]

/-- decaf377 prime subgroup order. -/
def subgroupOrder : ℕ :=
  2111115437357092606062206234695386632838870926408408195193685246394721360383

theorem subgroupOrder_odd : Odd subgroupOrder := by
  rw [Nat.odd_iff]; rfl

/-- `r`-torsion membership: `p` lifts to an on-curve point killed by `r`. -/
def memTorsion (p : Point) : Prop :=
  ∃ P : OnCurvePoint, P.1 = ⟨p.x, p.y⟩ ∧ subgroupOrder • P = 0

theorem memTorsion_zero : memTorsion identity :=
  ⟨0, by simp only [OnCurvePoint.zero_val, identity], by simp⟩

theorem memTorsion_neg (p : Point) : memTorsion p → memTorsion (neg p)
  | ⟨P, hP1, hP0⟩ =>
    ⟨-P,
      by simp only [OnCurvePoint.neg_val, hP1, negF, neg],
      by rw [smul_neg, hP0, neg_zero]⟩

theorem memTorsion_add (p q : Point) :
    memTorsion p → memTorsion q → memTorsion (add p q)
  | ⟨P, hP1, hP0⟩, ⟨Q, hQ1, hQ0⟩ =>
    ⟨P + Q,
      by simp only [OnCurvePoint.add_val, hP1, hQ1, addF, add, curveD, d],
      by rw [smul_add, hP0, hQ0, add_zero]⟩

theorem memTorsion_double (p : Point) : memTorsion p → memTorsion (double p)
  | ⟨P, hP1, hP0⟩ =>
    ⟨P + P,
      by
        have hoc : onCurve (⟨p.x, p.y⟩ : EdwardsBridge.Point) := hP1 ▸ P.2
        simp only [OnCurvePoint.add_val, hP1]
        rw [← double_eq_addF_self _ hoc]
        simp only [doubleF, double],
      by rw [smul_add, hP0, add_zero]⟩

theorem memTorsion_noTwoTorsionShift (p : Point) :
    memTorsion p → memTorsion ⟨-p.x, -p.y⟩ → False
  | ⟨P, hP1, hP0⟩, ⟨P', hP'1, hP'0⟩ => by
    have h1 : (P + OnCurvePoint.twoTorsion).1 = (⟨-p.x, -p.y⟩ : EdwardsBridge.Point) := by
      rw [← OnCurvePoint.neg_neg_eq_add_twoTorsion P]
      simp only [hP1]
    have key : P' = P + OnCurvePoint.twoTorsion :=
      OnCurvePoint.ext (by rw [hP'1, h1])
    exact OnCurvePoint.noTwoTorsionShift_of_torsion subgroupOrder
      subgroupOrder_odd P hP0 (key ▸ hP'0)

/-- The concrete decaf377 prime-order subgroup. The group structure, closure,
and `noTwoTorsionShift` are PROVED (`memTorsion_*`); only the three numeric /
structural membership facts (generator, blinding generator, encode-to-curve land
in `E[r]`) are threaded as explicit hypotheses, since they are large fixed
scalar-multiplications / a cofactor-clearing argument rather than algebra. They
are the honest residual: no `native_decide`, no kernel axiom. -/
def consolidate2x1PrimeOrderSubgroup
    (hgen : memTorsion generator)
    (hvbg : memTorsion valueBlindingGenerator)
    (henc : ∀ r : F, memTorsion (encodeToCurve r)) : PrimeOrderSubgroup where
  mem := memTorsion
  memZero := memTorsion_zero
  memAdd := memTorsion_add
  memDouble := memTorsion_double
  memNeg := memTorsion_neg
  memGenerator := hgen
  memValueBlindingGenerator := hvbg
  memEncode := henc
  noTwoTorsionShift := memTorsion_noTwoTorsionShift

end Shieldd.GnarkFormal.Decaf377Assumptions
