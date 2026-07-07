import ProvenZk.Gates
import Mathlib.Tactic.LinearCombination

set_option linter.unusedSectionVars false

/-!
Gnark gadget lowering lemmas for the deployed compress bridge: each deployed
constraint row (hint form) implies the corresponding `GatesDef` predicate that the
extracted `circuit` references. Reusable across any deployed slice that lowers
`is_zero`/`inv`/`select`/`is_bool`/`and` the standard gnark way.
-/

namespace Shieldd.GnarkFormal.DeployedGadgets

variable {N : Nat} [Fact (Nat.Prime N)]

/-- gnark `is_zero` hint rows: `a·inv = 1 - out` and `a·out = 0` force the
disjunction with no separate booleanity. -/
theorem is_zero_of_hint (a inv out : ZMod N)
    (h1 : a * inv = 1 - out) (h2 : a * out = 0) :
    GatesDef.is_zero a out := by
  rcases eq_or_ne a 0 with ha | ha
  · right; refine ⟨ha, ?_⟩
    rw [ha, zero_mul] at h1; linear_combination h1
  · left; refine ⟨ha, ?_⟩
    rcases mul_eq_zero.mp h2 with h | h
    · exact absurd h ha
    · exact h

/-- gnark `inv` hint row `out·a = 1` forces `a ≠ 0` and packages the predicate. -/
theorem inv_of_mul (a out : ZMod N) (h : out * a = 1) : GatesDef.inv a out := by
  refine ⟨?_, h⟩
  rintro rfl; rw [mul_zero] at h; exact one_ne_zero h.symm

/-- `is_bool` from the deployed booleanity row `a·(1-a) = 0`. -/
theorem is_bool_of_row (a : ZMod N) (h : a * (1 - a) = 0) : GatesDef.is_bool a := by
  unfold GatesDef.is_bool; linear_combination h

/-- `select` from booleanity + the affine output row. -/
theorem select_of_row (b i1 i2 out : ZMod N)
    (hb : GatesDef.is_bool b) (h : out = i2 - b * (i2 - i1)) :
    GatesDef.select b i1 i2 out := ⟨hb, h⟩

/-- `and` from the two booleanities + the product row. -/
theorem and_of_row (a b out : ZMod N)
    (ha : GatesDef.is_bool a) (hb : GatesDef.is_bool b) (h : out = a * b) :
    GatesDef.and a b out := ⟨ha, hb, h⟩

end Shieldd.GnarkFormal.DeployedGadgets
