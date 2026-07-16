import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas90
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

theorem rvk_step240 (rho : Nat -> F)
    (r240 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow240 rho)
    (r1717 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1717 rho)
    (r1718 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1718 rho)
    (r1719 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1719 rho)
    (r1720 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1720 rho)
    (r1721 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1721 rho)
    (r1722 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1722 rho)
    (r1723 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1723 rho)
    (r1724 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1724 rho)
    (hacc : onCurve (rvkRvkAcc rho 240)) :
    RvkFixedBaseLadder.FixedStepRel 240 (rho 241)
      (rvkRvkAcc rho 240) (rvkRvkAcc rho (240 + 1)) := by
  have hbrow240 : (1*(rho 241))*(1 + (-1)*(rho 241)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow240] using r240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1717 at r1717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1718 at r1718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1719 at r1719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1720 at r1720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1721 at r1721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1722 at r1722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1723 at r1723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1724 at r1724
  have h13_240 : rho 1718 = rvkAccX239 rho + rvkAccY239 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1477 rho
    rw [hLc] at r1717
    linear_combination -r1717
  have h14_240 : (6772296389239986671378956859861500069359331596161656606912733376557475308717*rvkAccX239 rho + 7796826063199595450469893030090568295522849956465905175758695894368515095753*rho 1) * (2038095029705799791750551460424790418921850671190595035485614575563709137534*rvkAccY239 rho + 2038095029705799791750551460424790418921850671190595035485614575563709137534 + 1527594709452849466540517727286313016362911606278171072498883692955816107282*rho 1) = rho 1719 := by
    have hL := rvk_lc1478 rho
    have hR := rvk_lc1479 rho
    rw [hL, hR] at r1718
    linear_combination r1718
  have h15_240 : 2587851510960106795465588224175038742665364520560632471846078675968275743602*rvkAccX239 rho + 2038095029705799791750551460424790418921850671190595035485614575563709137534*rvkAccY239 rho + 2038095029705799791750551460424790418921850671190595035485614575563709137534 + 6365964670583031667600079805115563618009991612823353570845031516402187010505*rho 1 = rho 1720 := by
    have hLc := rvk_lc1480 rho
    rw [hLc] at r1719
    linear_combination r1719
  have h16_240 : rho 1721 * (1 + rho 1719) = rho 1720 := by
    linear_combination r1720
  have h17_240 : 5856610238468263628783236714606507788710534814593431356089154779949133495439*rvkAccX239 rho + 6406366719722570632498273478356756112454048663963468792449618880353700101507*rvkAccY239 rho + 6406366719722570632498273478356756112454048663963468792449618880353700101507 + 2078497078845338756648745133665982913365907722330710257090201939515222228536*rho 1 = rho 1722 := by
    have hLc := rvk_lc1481 rho
    rw [hLc] at r1721
    linear_combination r1721
  have h18_240 : rho 1723 * (1 + (-1)*rho 1719) = rho 1722 + 4625946540665906587216139684599829161587215191751227507331693251531984881136*rho 1718 := by
    linear_combination r1722
  have hSelX_240 : (1*rho 241) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX239 rho + rho 1721) = rho 1724 := by
    have hLc := rvk_lc1482 rho
    rw [hLc] at r1723
    linear_combination r1723
  have hSelY_240 : (1*rho 241) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY239 rho + rho 1723) = rho 1725 := by
    have hLc := rvk_lc1483 rho
    rw [hLc] at r1724
    linear_combination r1724
  have hr240 : RvkFixedBaseLadder.FixedStepRel 240 (rho 241) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX239 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY239 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX240 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY240 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX240_succ, rvkAccY240_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 240
      (2038095029705799791750551460424790418921850671190595035485614575563709137534 : EdwardsBridge.F) (2587851510960106795465588224175038742665364520560632471846078675968275743602 : EdwardsBridge.F) (4625946540665906587216139684599829161587215191751227507331693251531984881136 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (6772296389239986671378956859861500069359331596161656606912733376557475308717 : EdwardsBridge.F) (7796826063199595450469893030090568295522849956465905175758695894368515095753 : EdwardsBridge.F)
      (1527594709452849466540517727286313016362911606278171072498883692955816107282 : EdwardsBridge.F) (6365964670583031667600079805115563618009991612823353570845031516402187010505 : EdwardsBridge.F) (5856610238468263628783236714606507788710534814593431356089154779949133495439 : EdwardsBridge.F)
      (6406366719722570632498273478356756112454048663963468792449618880353700101507 : EdwardsBridge.F) (2078497078845338756648745133665982913365907722330710257090201939515222228536 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX239 rho : F)
      (rvkAccY239 rho : F) (rho 241 : F)
      (rho 1718 : F) (rho 1719 : F) (rho 1720 : F)
      (rho 1722 : F) (rho 1721 : F) (rho 1723 : F)
      (rho 1724 : F) (rho 1725 : F) hacc
      (by rw [C_eq_L240]; simp only [L240])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_240 h14_240 h15_240 h16_240 h17_240 h18_240 hSelX_240 hSelY_240 hbrow240
  exact hr240

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

