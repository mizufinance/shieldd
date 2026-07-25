import ShielddGnarkFormal.RvkFixedBaseRungChoiceFree
import ShielddGnarkFormal.RvkFixedBaseConstantsChoiceFree
import ShielddGnarkFormal.RvkFixedBaseLadderChoiceFree
import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination

/-! Choice-free split fixed-base rung algebra for normalized providers. -/

namespace Shieldd.GnarkFormal.RvkFixedSplitRungChoiceFree

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)
open EdwardsBridge (Point onCurve a d)

abbrev F := EdwardsBridge.F

def GX : F := 4959445789346820725352484487855828915252512307947624787834978378872129235627
def GYM1 : F := 6060471950081851567114691557659790004756535011754163002297540472747064943287

theorem a_lit_eq_neg_one :
    (8444461749428370424248824938781546531375899335154063827935233455917409239040 : F) = -1 :=
  by decide

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafEdwardsDouble.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafEdwardsNeg.Order) := ‹_›

theorem splitRung_stepRel
    (Ci : Point) (gx gym1 : F)
    (akX akY Ev Kv la lb rb cc px py qb0 negGX negGY : F)
    (b0 d1x d1y bit i67 i68 i69 i71 outX outY sdx sdy : F)
    (hp : onCurve ⟨gx*b0 + d1x, 1 + gym1*b0 + d1y⟩)
    (hCi : onCurve Ci)
    (hC : Ci = ⟨akX, akY⟩)
    (cLa : la = d * akY)
    (cLb : lb = la * gx)
    (cRb : rb = akX * gym1)
    (cC : cc = akX * gym1 + akY * gx)
    (cPx : px = akX - Ev)
    (cPy : py = akY - Ev)
    (cQb0 : qb0 = akX * gx + akY * gym1 - Ev * Kv)
    (cNegGX : negGX = -gx)
    (cNegGY : negGY = -gym1)
    (h13 : i67 = (d1x + d1y) + Kv*b0 + 1)
    (h14 : (la*d1x + lb*b0) * (akX*d1y + akX + rb*b0) = i68)
    (h15 : akY*d1x + akX*d1y + akX + cc*b0 = i69)
    (h16 : outX * (1 + i68) = i69)
    (h17 : px*d1x + py*d1y + py + qb0*b0 = i71)
    (h18 : outY * (1 + (-1)*i68) = i71 + Ev*i67)
    (hSelX : (1*bit) * (negGX*b0 + (-1)*d1x + outX) = sdx)
    (hSelY : (1*bit) * ((-1) + negGY*b0 + (-1)*d1y + outY) = sdy)
    (hbit : (1*bit) * (1 + (-1)*bit) = 0) :
    ∃ sum,
      EdwardsBridge.addSpec ⟨gx*b0 + d1x, 1 + gym1*b0 + d1y⟩ Ci sum ∧
      GatesDef.select bit sum.x (gx*b0 + d1x) (gx*b0 + (d1x + sdx)) ∧
      GatesDef.select bit sum.y (1 + gym1*b0 + d1y)
        ((1 + gym1*b0 + d1y) + sdy) := by
  have e68 : i68 = d * ((1 + gym1*b0 + d1y) * akX) * ((gx*b0 + d1x) * akY) := by
    rw [← h14, cLb, cLa, cRb]
    ring
  have e68x :
      d * (akY * (gx*b0 + d1x)) * (akX * (1 + gym1*b0 + d1y)) = i68 := by
    rw [e68]
    ring
  have e69 : i69 = (1 + gym1*b0 + d1y) * akX + (gx*b0 + d1x) * akY := by
    rw [← h15, cC]
    ring
  have e69x : akY * (gx*b0 + d1x) + akX * (1 + gym1*b0 + d1y) = i69 := by
    rw [e69]
    ring
  refine RvkFixedBaseRungChoiceFree.fixedRung_stepRel bit
    ⟨gx*b0 + d1x, 1 + gym1*b0 + d1y⟩ Ci ⟨outX, outY⟩
    ⟨gx*b0 + (d1x + sdx), (1 + gym1*b0 + d1y) + sdy⟩ hp hCi ?_ ?_ ?_ ?_ ?_
  · rw [hC]
    simp only
    rw [e68x, e69x]
    exact h16
  · rw [hC]
    simp only
    rw [e68x]
    have h18' : outY * (1 - i68) = i71 + Ev*i67 := by
      linear_combination h18
    rw [h18', ← h17, h13, cPx, cPy, cQb0,
      show (a : F) = -1 from by
        change (8444461749428370424248824938781546531375899335154063827935233455917409239040 : F) = -1
        exact a_lit_eq_neg_one]
    ring
  · linear_combination hbit
  · rw [cNegGX] at hSelX
    linear_combination -hSelX
  · rw [cNegGY] at hSelY
    linear_combination -hSelY

theorem splitRung_fixedStepRel
    (i : Nat)
    (akX akY Ev Kv la lb rb cc px py qb0 negGX negGY : F)
    (b0 d1x d1y bit i67 i68 i69 i71 outX outY sdx sdy : F)
    (hp : onCurve ⟨GX*b0 + d1x, 1 + GYM1*b0 + d1y⟩)
    (hC : RvkFixedBaseConstantsChoiceFree.C i = ⟨akX, akY⟩)
    (cLa : la = d * akY)
    (cLb : lb = la * GX)
    (cRb : rb = akX * GYM1)
    (cC : cc = akX * GYM1 + akY * GX)
    (cPx : px = akX - Ev)
    (cPy : py = akY - Ev)
    (cQb0 : qb0 = akX * GX + akY * GYM1 - Ev * Kv)
    (cNegGX : negGX = -GX)
    (cNegGY : negGY = -GYM1)
    (h13 : i67 = (d1x + d1y) + Kv*b0 + 1)
    (h14 : (la*d1x + lb*b0) * (akX*d1y + akX + rb*b0) = i68)
    (h15 : akY*d1x + akX*d1y + akX + cc*b0 = i69)
    (h16 : outX * (1 + i68) = i69)
    (h17 : px*d1x + py*d1y + py + qb0*b0 = i71)
    (h18 : outY * (1 + (-1)*i68) = i71 + Ev*i67)
    (hSelX : (1*bit) * (negGX*b0 + (-1)*d1x + outX) = sdx)
    (hSelY : (1*bit) * ((-1) + negGY*b0 + (-1)*d1y + outY) = sdy)
    (hbit : (1*bit) * (1 + (-1)*bit) = 0) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel i bit
      ⟨GX*b0 + d1x, 1 + GYM1*b0 + d1y⟩
      ⟨GX*b0 + (d1x + sdx), (1 + GYM1*b0 + d1y) + sdy⟩ := by
  have e68 : i68 =
      d * ((1 + GYM1*b0 + d1y) * akX) * ((GX*b0 + d1x) * akY) := by
    rw [← h14, cLb, cLa, cRb]
    ring
  have e68x :
      d * (akY * (GX*b0 + d1x)) * (akX * (1 + GYM1*b0 + d1y)) = i68 := by
    rw [e68]
    ring
  have e69 : i69 =
      (1 + GYM1*b0 + d1y) * akX + (GX*b0 + d1x) * akY := by
    rw [← h15, cC]
    ring
  have e69x :
      akY * (GX*b0 + d1x) + akX * (1 + GYM1*b0 + d1y) = i69 := by
    rw [e69]
    ring
  refine RvkFixedBaseRungChoiceFree.fixedRung_fixedStepRel i bit
    ⟨GX*b0 + d1x, 1 + GYM1*b0 + d1y⟩ ⟨outX, outY⟩
    ⟨GX*b0 + (d1x + sdx), (1 + GYM1*b0 + d1y) + sdy⟩ hp ?_ ?_ ?_ ?_ ?_
  · rw [hC]
    simp only
    rw [e68x, e69x]
    exact h16
  · rw [hC]
    simp only
    rw [e68x]
    have h18' : outY * (1 - i68) = i71 + Ev*i67 := by
      linear_combination h18
    rw [h18', ← h17, h13, cPx, cPy, cQb0,
      show (a : F) = -1 from by
        change (8444461749428370424248824938781546531375899335154063827935233455917409239040 : F) = -1
        exact a_lit_eq_neg_one]
    ring
  · linear_combination hbit
  · rw [cNegGX] at hSelX
    linear_combination -hSelX
  · rw [cNegGY] at hSelY
    linear_combination -hSelY

end Shieldd.GnarkFormal.RvkFixedSplitRungChoiceFree
