import ShielddGnarkFormal.RvkFixedBaseConstants
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.EdwardsCompleteness

/-! # Deployed-row → `FixedStepRel` keystone for the const-folded RVK ladder

The shipped RVK slice is compiled from `scalarMulLEMirror` over the **constant**
generator (`decaf_gadgets.go:204`). Because `cur` starts at the literal generator
and is only ever doubled, gnark const-folds every `cur = 2ⁱ·G` into the row
coefficients: the per-rung doublings vanish and each rung is the fused

```
sum := edwardsAddMirror(acc, Cᵢ)        -- Cᵢ = 2ⁱ·G, a baked constant
acc' := { select(bitᵢ, sum.X, acc.X), select(bitᵢ, sum.Y, acc.Y) }
```

`edwardsAddMirror` (`decaf_gadgets.go:361`) emits its two coordinates through
`DivUnchecked`, so in the deployed R1CS each leaves only the bilinear row
`out·den = num`; the quotient hint is witness-side. That bare row is weaker than
`Gates.div_unchecked`, which also needs `den ≠ 0` — exactly Edwards completeness
for on-curve points (`add_den_plus_ne` / `add_den_minus_ne`).

This module discharges one rung: given the bare deployed rows **and** the
on-curve invariants for the incoming `acc` and the materialized constant `Ci`, it
produces `RvkFixedBaseLadder.FixedStepRel` for that rung. The right operand is an
abstract on-curve `Ci`; the literal binding `Ci = C i` (the kernel-checked
doubling recurrence) is applied at the call site, so the algebra here is
independent of the 251 constant proofs.

No doubling rows appear (folded away), so unlike the variable-base
`RvkDeployedRung.deployedRung_stepRel` there is no `doubleSpec` obligation. -/

namespace Shieldd.GnarkFormal.RvkFixedBaseRung

open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)
open EdwardsBridge (Point a d onCurve addSpec add_den_plus_ne add_den_minus_ne)

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafEdwardsDouble.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafEdwardsNeg.Order) := ‹_›

/-- **Keystone.** The bare deployed rows of one const-folded RVK rung, with the
on-curve invariants for the incoming `acc` and the materialized constant `Ci`,
imply the fixed-base step relation against `Ci`. Each `addSpec` coordinate is
obtained from its bilinear row by completeness (`den ≠ 0`, left disjunct); the two
`Select` rows and the booleanity row give the accumulator update.

Row layout (matching `edwardsAddMirror(acc, Ci)` + the two `Select`s):
* `hAddX`/`hAddY` — the two `DivUnchecked` rows of the constant add, normal form;
* `hbit`          — booleanity of the bit;
* `hSelX`/`hSelY` — the two `Select(bit, sum, acc)` rows. -/
theorem fixedRung_stepRel
    (bit : EdwardsBridge.F) (acc Ci sum acc' : Point)
    (hacc : onCurve acc) (hCi : onCurve Ci)
    (hAddX : sum.x * (1 + d * (Ci.y * acc.x) * (Ci.x * acc.y))
        = Ci.y * acc.x + Ci.x * acc.y)
    (hAddY : sum.y * (1 - d * (Ci.y * acc.x) * (Ci.x * acc.y))
        = a * (Ci.y * acc.x) - Ci.x * acc.y
          + (acc.y - acc.x * a) * (Ci.x + Ci.y))
    (hbit : (1 - bit) * bit = 0)
    (hSelX : acc'.x = acc.x - bit * (acc.x - sum.x))
    (hSelY : acc'.y = acc.y - bit * (acc.y - sum.y)) :
    ∃ s,
      addSpec acc Ci s ∧
      GatesDef.select bit s.x acc.x acc'.x ∧
      GatesDef.select bit s.y acc.y acc'.y := by
  refine ⟨sum, ?_, ?_, ?_⟩
  · -- addSpec acc Ci sum
    refine ⟨Or.inl ⟨add_den_plus_ne acc Ci hacc hCi, ?_⟩,
            Or.inl ⟨add_den_minus_ne acc Ci hacc hCi, ?_⟩⟩
    · linear_combination hAddX
    · linear_combination hAddY
  · exact ⟨hbit, by linear_combination hSelX⟩
  · exact ⟨hbit, by linear_combination hSelY⟩

/-- The keystone specialized to the kernel-checked recurrence constant `C i`,
producing `FixedStepRel` directly. The literal binding turning the row's baked
coefficients into `C i` is supplied by the per-instance certificate via `hAddX`
/`hAddY` being stated against `C i`. -/
theorem fixedRung_fixedStepRel
    (i : ℕ) (bit : EdwardsBridge.F) (acc sum acc' : Point)
    (hacc : onCurve acc)
    (hAddX : sum.x * (1 + d * ((RvkFixedBaseConstants.C i).y * acc.x)
          * ((RvkFixedBaseConstants.C i).x * acc.y))
        = (RvkFixedBaseConstants.C i).y * acc.x
          + (RvkFixedBaseConstants.C i).x * acc.y)
    (hAddY : sum.y * (1 - d * ((RvkFixedBaseConstants.C i).y * acc.x)
          * ((RvkFixedBaseConstants.C i).x * acc.y))
        = a * ((RvkFixedBaseConstants.C i).y * acc.x)
          - (RvkFixedBaseConstants.C i).x * acc.y
          + (acc.y - acc.x * a)
            * ((RvkFixedBaseConstants.C i).x + (RvkFixedBaseConstants.C i).y))
    (hbit : (1 - bit) * bit = 0)
    (hSelX : acc'.x = acc.x - bit * (acc.x - sum.x))
    (hSelY : acc'.y = acc.y - bit * (acc.y - sum.y)) :
    RvkFixedBaseLadder.FixedStepRel i bit acc acc' :=
  fixedRung_stepRel bit acc (RvkFixedBaseConstants.C i) sum acc' hacc
    (RvkFixedBaseConstants.C_onCurve i) hAddX hAddY hbit hSelX hSelY

end Shieldd.GnarkFormal.RvkFixedBaseRung
