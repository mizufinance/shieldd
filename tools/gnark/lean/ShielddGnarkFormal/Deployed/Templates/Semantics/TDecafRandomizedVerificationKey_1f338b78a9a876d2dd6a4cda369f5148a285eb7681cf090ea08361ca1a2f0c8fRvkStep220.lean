import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas70
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedSplitRung
import ShielddGnarkFormal.RvkFixedBaseLiteral
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem rvk_step220 (rho : Nat -> F)
    (r220 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow220 rho)
    (r1557 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1557 rho)
    (r1558 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1558 rho)
    (r1559 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1559 rho)
    (r1560 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1560 rho)
    (r1561 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1561 rho)
    (r1562 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1562 rho)
    (r1563 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1563 rho)
    (r1564 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1564 rho)
    (hacc : onCurve (rvkRvkAcc rho 220)) :
    RvkFixedBaseLadder.FixedStepRel 220 (rho 221)
      (rvkRvkAcc rho 220) (rvkRvkAcc rho (220 + 1)) := by
  have hbrow220 : (1*(rho 221))*(1 + (-1)*(rho 221)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow220] using r220
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1557 at r1557
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1558 at r1558
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1559 at r1559
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1560 at r1560
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1561 at r1561
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1562 at r1562
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1563 at r1563
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1564 at r1564
  have h13_220 : rho 1558 = rvkAccX219 rho + rvkAccY219 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1337 rho
    rw [hLc] at r1557
    linear_combination -r1557
  have h14_220 : (664720289368771774607689558907679234755924170859141298034878778977921393150*rvkAccX219 rho + 3852354410364297846567328813030532193415590370172629429674586400220246585410*rho 1) * (1840999688597703629631039258546352622862511100796735162417886474873228693825*rvkAccY219 rho + 1840999688597703629631039258546352622862511100796735162417886474873228693825 + 1673511469619955977518183988565504897056510131010753193051227192168730177644*rho 1) = rho 1559 := by
    have hL := rvk_lc1338 rho
    have hR := rvk_lc1339 rho
    rw [hL, hR] at r1558
    linear_combination r1558
  have h15_220 : 1509657088705954584862288366931791726639437790517727113003330335972982095490*rvkAccX219 rho + 1840999688597703629631039258546352622862511100796735162417886474873228693825*rvkAccY219 rho + 1840999688597703629631039258546352622862511100796735162417886474873228693825 + 7992060264098102768861749592822150277097207942271381091284693659157662692314*rho 1 = rho 1560 := by
    have hLc := rvk_lc1340 rho
    rw [hLc] at r1559
    linear_combination r1559
  have h16_220 : rho 1561 * (1 + rho 1559) = rho 1560 := by
    linear_combination r1560
  have h17_220 : 6934804660722415839386536571849754804736461544636336714931903119944427143551*rvkAccX219 rho + 6603462060830666794617785680235193908513388234357328665517346981044180545216*rvkAccY219 rho + 6603462060830666794617785680235193908513388234357328665517346981044180545216 + 452401485330267655387075345959396254278691392882682736650539796759746546727*rho 1 = rho 1562 := by
    have hLc := rvk_lc1341 rho
    rw [hLc] at r1561
    linear_combination r1561
  have h18_220 : rho 1563 * (1 + (-1)*rho 1559) = rho 1562 + 3350656777303658214493327625478144349501948891314462275421216810846210789315*rho 1558 := by
    linear_combination r1562
  have hSelX_220 : (1*rho 221) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX219 rho + rho 1561) = rho 1564 := by
    have hLc := rvk_lc1342 rho
    rw [hLc] at r1563
    linear_combination r1563
  have hSelY_220 : (1*rho 221) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY219 rho + rho 1563) = rho 1565 := by
    have hLc := rvk_lc1343 rho
    rw [hLc] at r1564
    linear_combination r1564
  have hr220 : RvkFixedBaseLadder.FixedStepRel 220 (rho 221) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX219 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY219 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX220 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY220 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX220_succ, rvkAccY220_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 220
      (1840999688597703629631039258546352622862511100796735162417886474873228693825 : EdwardsBridge.F) (1509657088705954584862288366931791726639437790517727113003330335972982095490 : EdwardsBridge.F) (3350656777303658214493327625478144349501948891314462275421216810846210789315 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (664720289368771774607689558907679234755924170859141298034878778977921393150 : EdwardsBridge.F) (3852354410364297846567328813030532193415590370172629429674586400220246585410 : EdwardsBridge.F)
      (1673511469619955977518183988565504897056510131010753193051227192168730177644 : EdwardsBridge.F) (7992060264098102768861749592822150277097207942271381091284693659157662692314 : EdwardsBridge.F) (6934804660722415839386536571849754804736461544636336714931903119944427143551 : EdwardsBridge.F)
      (6603462060830666794617785680235193908513388234357328665517346981044180545216 : EdwardsBridge.F) (452401485330267655387075345959396254278691392882682736650539796759746546727 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX219 rho : F)
      (rvkAccY219 rho : F) (rho 221 : F)
      (rho 1558 : F) (rho 1559 : F) (rho 1560 : F)
      (rho 1562 : F) (rho 1561 : F) (rho 1563 : F)
      (rho 1564 : F) (rho 1565 : F) hacc
      (by rw [C_eq_L220]; simp only [L220])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_220 h14_220 h15_220 h16_220 h17_220 h18_220 hSelX_220 hSelY_220 hbrow220
  exact hr220

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

