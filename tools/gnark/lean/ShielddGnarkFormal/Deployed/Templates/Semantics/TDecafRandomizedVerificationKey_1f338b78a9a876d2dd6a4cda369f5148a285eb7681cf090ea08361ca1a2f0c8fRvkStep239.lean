import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas89
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

theorem rvk_step239 (rho : Nat -> F)
    (r239 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow239 rho)
    (r1709 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1709 rho)
    (r1710 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1710 rho)
    (r1711 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1711 rho)
    (r1712 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1712 rho)
    (r1713 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1713 rho)
    (r1714 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1714 rho)
    (r1715 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1715 rho)
    (r1716 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1716 rho)
    (hacc : onCurve (rvkRvkAcc rho 239)) :
    RvkFixedBaseLadder.FixedStepRel 239 (rho 240)
      (rvkRvkAcc rho 239) (rvkRvkAcc rho (239 + 1)) := by
  have hbrow239 : (1*(rho 240))*(1 + (-1)*(rho 240)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow239] using r239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1709 at r1709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1710 at r1710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1711 at r1711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1712 at r1712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1713 at r1713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1714 at r1714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1715 at r1715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1716 at r1716
  have h13_239 : rho 1710 = rvkAccX238 rho + rvkAccY238 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1470 rho
    rw [hLc] at r1709
    linear_combination -r1709
  have h14_239 : (2419781321145861764726265215228723255126294865025301069516030121558411920042*rvkAccX238 rho + 859882192148861689382806839411705393065304362639521984048112477304077950933*rho 1) * (629217992256084577122866111698153496803649394247312880233898704412863053304*rvkAccY238 rho + 629217992256084577122866111698153496803649394247312880233898704412863053304 + 225853431996158285045358681658574726861631960515721974037992608483180946748*rho 1) = rho 1711 := by
    have hL := rvk_lc1471 rho
    have hR := rvk_lc1472 rho
    rw [hL, hR] at r1710
    linear_combination r1710
  have h15_239 : 6661890807748742993296814331126002683721911423547553592532001772781444762845*rvkAccX238 rho + 629217992256084577122866111698153496803649394247312880233898704412863053304*rvkAccY238 rho + 629217992256084577122866111698153496803649394247312880233898704412863053304 + 3091273218608613944278866913730900744754171557634409476725070531287765040746*rho 1 = rho 1712 := by
    have hLc := rvk_lc1473 rho
    rw [hLc] at r1711
    linear_combination r1711
  have h16_239 : rho 1713 * (1 + rho 1711) = rho 1712 := by
    linear_combination r1712
  have h17_239 : 1782570941679627430952010607655543847653987911606510235403231683135964476196*rvkAccX238 rho + 7815243757172285847125958827083393034572249940906750947701334751504546185737*rvkAccY238 rho + 7815243757172285847125958827083393034572249940906750947701334751504546185737 + 5353188530819756479969958025050645786621727777519654351210162924629644198295*rho 1 = rho 1714 := by
    have hLc := rvk_lc1474 rho
    rw [hLc] at r1713
    linear_combination r1713
  have h18_239 : rho 1715 * (1 + (-1)*rho 1711) = rho 1714 + 7291108800004827570419680442824156180525560817794866472765900477194307816149*rho 1710 := by
    linear_combination r1714
  have hSelX_239 : (1*rho 240) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX238 rho + rho 1713) = rho 1716 := by
    have hLc := rvk_lc1475 rho
    rw [hLc] at r1715
    linear_combination r1715
  have hSelY_239 : (1*rho 240) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY238 rho + rho 1715) = rho 1717 := by
    have hLc := rvk_lc1476 rho
    rw [hLc] at r1716
    linear_combination r1716
  have hr239 : RvkFixedBaseLadder.FixedStepRel 239 (rho 240) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX238 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY238 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX239 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY239 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX239_succ, rvkAccY239_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 239
      (629217992256084577122866111698153496803649394247312880233898704412863053304 : EdwardsBridge.F) (6661890807748742993296814331126002683721911423547553592532001772781444762845 : EdwardsBridge.F) (7291108800004827570419680442824156180525560817794866472765900477194307816149 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (2419781321145861764726265215228723255126294865025301069516030121558411920042 : EdwardsBridge.F) (859882192148861689382806839411705393065304362639521984048112477304077950933 : EdwardsBridge.F)
      (225853431996158285045358681658574726861631960515721974037992608483180946748 : EdwardsBridge.F) (3091273218608613944278866913730900744754171557634409476725070531287765040746 : EdwardsBridge.F) (1782570941679627430952010607655543847653987911606510235403231683135964476196 : EdwardsBridge.F)
      (7815243757172285847125958827083393034572249940906750947701334751504546185737 : EdwardsBridge.F) (5353188530819756479969958025050645786621727777519654351210162924629644198295 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX238 rho : F)
      (rvkAccY238 rho : F) (rho 240 : F)
      (rho 1710 : F) (rho 1711 : F) (rho 1712 : F)
      (rho 1714 : F) (rho 1713 : F) (rho 1715 : F)
      (rho 1716 : F) (rho 1717 : F) hacc
      (by rw [C_eq_L239]; simp only [L239])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_239 h14_239 h15_239 h16_239 h17_239 h18_239 hSelX_239 hSelY_239 hbrow239
  exact hr239

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

