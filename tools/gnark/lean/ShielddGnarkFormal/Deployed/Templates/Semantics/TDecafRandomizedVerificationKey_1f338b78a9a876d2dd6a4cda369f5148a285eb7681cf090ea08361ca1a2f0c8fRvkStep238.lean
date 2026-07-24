import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas88
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedSplitRung
import ShielddGnarkFormal.RvkFixedBaseLiteral
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem rvk_step238 (rho : Nat -> F)
    (r238 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow238 rho)
    (r1701 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1701 rho)
    (r1702 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1702 rho)
    (r1703 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1703 rho)
    (r1704 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1704 rho)
    (r1705 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1705 rho)
    (r1706 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1706 rho)
    (r1707 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1707 rho)
    (r1708 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1708 rho)
    (hacc : onCurve (rvkRvkAcc rho 238)) :
    RvkFixedBaseLadder.FixedStepRel 238 (rho 239)
      (rvkRvkAcc rho 238) (rvkRvkAcc rho (238 + 1)) := by
  have hbrow238 : (1*(rho 239))*(1 + (-1)*(rho 239)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow238] using r238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1701 at r1701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1702 at r1702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1703 at r1703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1704 at r1704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1705 at r1705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1706 at r1706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1707 at r1707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1708 at r1708
  have h13_238 : rho 1702 = rvkAccX237 rho + rvkAccY237 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1463 rho
    rw [hLc] at r1701
    linear_combination -r1701
  have h14_238 : (2758875159586716113257451409033950884644675870875090439171697944807152823915*rvkAccX237 rho + 907802197456396623474074233664053082891999652188052681086914831017372471204*rho 1) * (2652868519506863513771102772860334610209107123244578824609856963782777022786*rvkAccY237 rho + 2652868519506863513771102772860334610209107123244578824609856963782777022786 + 5908493774085841219132802642962135592237100176275034161730010450272731341509*rho 1) = rho 1703 := by
    have hL := rvk_lc1464 rho
    have hR := rvk_lc1465 rho
    rw [hL, hR] at r1702
    linear_combination r1702
  have h15_238 : 2047039018782242259736311587751448530900960936512297190495783709922658297187*rvkAccX237 rho + 2652868519506863513771102772860334610209107123244578824609856963782777022786*rvkAccY237 rho + 2652868519506863513771102772860334610209107123244578824609856963782777022786 + 5120532697905323488906157638492512265932859324616226499764883366612455925111*rho 1 = rho 1704 := by
    have hLc := rvk_lc1466 rho
    rw [hLc] at r1703
    linear_combination r1703
  have h16_238 : rho 1705 * (1 + rho 1703) = rho 1704 := by
    linear_combination r1704
  have h17_238 : 6397422730646128164512513351030098000474938398641766637439449745994750941854*rvkAccX237 rho + 5791593229921506910477722165921211921166792211909485003325376492134632216255*rvkAccY237 rho + 5791593229921506910477722165921211921166792211909485003325376492134632216255 + 3323929051523046935342667300289034265443040010537837328170350089304953313930*rho 1 = rho 1706 := by
    have hLc := rvk_lc1467 rho
    rw [hLc] at r1705
    linear_combination r1705
  have h18_238 : rho 1707 * (1 + (-1)*rho 1703) = rho 1706 + 4699907538289105773507414360611783141110068059756876015105640673705435319973*rho 1702 := by
    linear_combination r1706
  have hSelX_238 : (1*rho 239) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX237 rho + rho 1705) = rho 1708 := by
    have hLc := rvk_lc1468 rho
    rw [hLc] at r1707
    linear_combination r1707
  have hSelY_238 : (1*rho 239) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY237 rho + rho 1707) = rho 1709 := by
    have hLc := rvk_lc1469 rho
    rw [hLc] at r1708
    linear_combination r1708
  have hr238 : RvkFixedBaseLadder.FixedStepRel 238 (rho 239) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX237 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY237 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX238 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY238 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX238_succ, rvkAccY238_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 238
      (2652868519506863513771102772860334610209107123244578824609856963782777022786 : EdwardsBridge.F) (2047039018782242259736311587751448530900960936512297190495783709922658297187 : EdwardsBridge.F) (4699907538289105773507414360611783141110068059756876015105640673705435319973 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (2758875159586716113257451409033950884644675870875090439171697944807152823915 : EdwardsBridge.F) (907802197456396623474074233664053082891999652188052681086914831017372471204 : EdwardsBridge.F)
      (5908493774085841219132802642962135592237100176275034161730010450272731341509 : EdwardsBridge.F) (5120532697905323488906157638492512265932859324616226499764883366612455925111 : EdwardsBridge.F) (6397422730646128164512513351030098000474938398641766637439449745994750941854 : EdwardsBridge.F)
      (5791593229921506910477722165921211921166792211909485003325376492134632216255 : EdwardsBridge.F) (3323929051523046935342667300289034265443040010537837328170350089304953313930 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX237 rho : F)
      (rvkAccY237 rho : F) (rho 239 : F)
      (rho 1702 : F) (rho 1703 : F) (rho 1704 : F)
      (rho 1706 : F) (rho 1705 : F) (rho 1707 : F)
      (rho 1708 : F) (rho 1709 : F) hacc
      (by rw [C_eq_L238]; simp only [L238])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_238 h14_238 h15_238 h16_238 h17_238 h18_238 hSelX_238 hSelY_238 hbrow238
  exact hr238

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

