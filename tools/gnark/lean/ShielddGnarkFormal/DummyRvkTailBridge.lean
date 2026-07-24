import ShielddGnarkFormal.RvkDeployedRung

/-! Small algebraic bridges for the normalized synthetic-dummy RVK tail. -/

namespace Shieldd.GnarkFormal.DummyRvkTailBridge

open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)
open EdwardsBridge (a d)

variable [Fact (Nat.Prime Order)]

theorem fixedGeneratorXYCoefficient :
    (4959445789346820725352484487855828915252512307947624787834978378872129235627 : F) +
      6060471950081851567114691557659790004756535011754163002297540472747064943287 =
    2575455990000301868218351106734072388633147984547723962197285395701784939873 := by
  have horder : (Order : F) = 0 := ZMod.natCast_self Order
  change (8444461749428370424248824938781546531375899335154063827935233455917409239041 : F) = 0 at horder
  linear_combination horder

theorem deployedTail_x_row
    (akX akY pX pY outX : F)
    (h : outX * (1 + d * (akX * pY) * (pX * akY)) =
      akX * pY + pX * akY) :
    outX * (1 + d * (pY * akX) * (pX * akY)) =
      pY * akX + pX * akY := by
  linear_combination h

theorem deployedTail_y_row
    (akX akY pX pY outY : F)
    (h : outY * (1 + -1 * (d * (akX * pY) * (pX * akY))) =
      (akX + akY) * (pX + pY) + -1 * (akX * pY) + -1 * (pX * akY)) :
    outY * (1 - d * (pY * akX) * (pX * akY)) =
      a * (pY * akX) - pX * akY + (akY - akX * a) * (pX + pY) := by
  rw [EdwardsBridge.a_eq]
  linear_combination h

end Shieldd.GnarkFormal.DummyRvkTailBridge
