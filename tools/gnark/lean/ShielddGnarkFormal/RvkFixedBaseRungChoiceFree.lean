import ShielddGnarkFormal.RvkFixedBaseLadderChoiceFree
import ShielddGnarkFormal.EdwardsCompleteness
import ShielddGnarkFormal.ChoiceFreeZMod

/-! Choice-free fixed-base rung algebra for normalized semantic providers. -/

namespace Shieldd.GnarkFormal.RvkFixedBaseRungChoiceFree

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)
open EdwardsBridge (Point a d onCurve addSpec add_den_plus_ne add_den_minus_ne)

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafEdwardsDouble.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafEdwardsNeg.Order) := ‹_›

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
  · refine ⟨Or.inl ⟨add_den_plus_ne acc Ci hacc hCi, ?_⟩,
            Or.inl ⟨add_den_minus_ne acc Ci hacc hCi, ?_⟩⟩
    · linear_combination hAddX
    · linear_combination hAddY
  · exact ⟨hbit, by linear_combination hSelX⟩
  · exact ⟨hbit, by linear_combination hSelY⟩

theorem fixedRung_fixedStepRel
    (i : ℕ) (bit : EdwardsBridge.F) (acc sum acc' : Point)
    (hacc : onCurve acc)
    (hAddX : sum.x * (1 + d *
          ((RvkFixedBaseConstantsChoiceFree.C i).y * acc.x) *
          ((RvkFixedBaseConstantsChoiceFree.C i).x * acc.y))
        = (RvkFixedBaseConstantsChoiceFree.C i).y * acc.x
          + (RvkFixedBaseConstantsChoiceFree.C i).x * acc.y)
    (hAddY : sum.y * (1 - d *
          ((RvkFixedBaseConstantsChoiceFree.C i).y * acc.x) *
          ((RvkFixedBaseConstantsChoiceFree.C i).x * acc.y))
        = a * ((RvkFixedBaseConstantsChoiceFree.C i).y * acc.x)
          - (RvkFixedBaseConstantsChoiceFree.C i).x * acc.y
          + (acc.y - acc.x * a) *
            ((RvkFixedBaseConstantsChoiceFree.C i).x
              + (RvkFixedBaseConstantsChoiceFree.C i).y))
    (hbit : (1 - bit) * bit = 0)
    (hSelX : acc'.x = acc.x - bit * (acc.x - sum.x))
    (hSelY : acc'.y = acc.y - bit * (acc.y - sum.y)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel i bit acc acc' :=
  fixedRung_stepRel bit acc (RvkFixedBaseConstantsChoiceFree.C i) sum acc' hacc
    (RvkFixedBaseConstantsChoiceFree.C_onCurve i)
    hAddX hAddY hbit hSelX hSelY

end Shieldd.GnarkFormal.RvkFixedBaseRungChoiceFree
