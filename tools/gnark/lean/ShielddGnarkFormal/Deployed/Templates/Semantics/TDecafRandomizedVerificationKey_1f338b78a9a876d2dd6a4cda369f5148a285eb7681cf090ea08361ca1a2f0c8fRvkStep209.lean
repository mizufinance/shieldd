import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas59
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

theorem rvk_step209 (rho : Nat -> F)
    (r209 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow209 rho)
    (r1469 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1469 rho)
    (r1470 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1470 rho)
    (r1471 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1471 rho)
    (r1472 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1472 rho)
    (r1473 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1473 rho)
    (r1474 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1474 rho)
    (r1475 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1475 rho)
    (r1476 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1476 rho)
    (hacc : onCurve (rvkRvkAcc rho 209)) :
    RvkFixedBaseLadder.FixedStepRel 209 (rho 210)
      (rvkRvkAcc rho 209) (rvkRvkAcc rho (209 + 1)) := by
  have hbrow209 : (1*(rho 210))*(1 + (-1)*(rho 210)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow209] using r209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1469 at r1469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1470 at r1470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1471 at r1471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1472 at r1472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1473 at r1473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1474 at r1474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1475 at r1475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1476 at r1476
  have h13_209 : rho 1470 = rvkAccX208 rho + rvkAccY208 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1260 rho
    rw [hLc] at r1469
    linear_combination -r1469
  have h14_209 : (1287783588031834503867680794883494161905915226350935837697378655588185476782*rvkAccX208 rho + 7313171147760440668576192520514480090443359023526454996653178547585418396775*rho 1) * (3784676001296899466897935170773209098273264336542008530461130934325590249494*rvkAccY208 rho + 3784676001296899466897935170773209098273264336542008530461130934325590249494 + 2997961533863059133012034044481114141522043634312603237040104578955774474167*rho 1) = rho 1471 := by
    have hL := rvk_lc1261 rho
    have hR := rvk_lc1262 rho
    rw [hL, hR] at r1470
    linear_combination r1470
  have h15_209 : 3849490768802018506684706925354873574268957067108075745416919512563343498059*rvkAccX208 rho + 3784676001296899466897935170773209098273264336542008530461130934325590249494*rvkAccY208 rho + 3784676001296899466897935170773209098273264336542008530461130934325590249494 + 277805104602724027897906504642414425709503881443840670534886370575777393588*rho 1 = rho 1472 := by
    have hLc := rvk_lc1263 rho
    rw [hLc] at r1471
    linear_combination r1471
  have h16_209 : rho 1473 * (1 + rho 1471) = rho 1472 := by
    linear_combination r1472
  have h17_209 : 4594970980626351917564118013426672957106942268045988082518313943354065740982*rvkAccX208 rho + 4659785748131470957350889768008337433102634998612055297474102521591818989547*rvkAccY208 rho + 4659785748131470957350889768008337433102634998612055297474102521591818989547 + 8166656644825646396350918434139132105666395453710223157400347085341631845453*rho 1 = rho 1474 := by
    have hLc := rvk_lc1264 rho
    rw [hLc] at r1473
    linear_combination r1473
  have h18_209 : rho 1475 * (1 + (-1)*rho 1471) = rho 1474 + 7634166770098917973582642096128082672542221403650084275878050446888933747553*rho 1470 := by
    linear_combination r1474
  have hSelX_209 : (1*rho 210) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX208 rho + rho 1473) = rho 1476 := by
    have hLc := rvk_lc1265 rho
    rw [hLc] at r1475
    linear_combination r1475
  have hSelY_209 : (1*rho 210) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY208 rho + rho 1475) = rho 1477 := by
    have hLc := rvk_lc1266 rho
    rw [hLc] at r1476
    linear_combination r1476
  have hr209 : RvkFixedBaseLadder.FixedStepRel 209 (rho 210) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX208 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY208 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX209 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY209 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX209_succ, rvkAccY209_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 209
      (3784676001296899466897935170773209098273264336542008530461130934325590249494 : EdwardsBridge.F) (3849490768802018506684706925354873574268957067108075745416919512563343498059 : EdwardsBridge.F) (7634166770098917973582642096128082672542221403650084275878050446888933747553 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (1287783588031834503867680794883494161905915226350935837697378655588185476782 : EdwardsBridge.F) (7313171147760440668576192520514480090443359023526454996653178547585418396775 : EdwardsBridge.F)
      (2997961533863059133012034044481114141522043634312603237040104578955774474167 : EdwardsBridge.F) (277805104602724027897906504642414425709503881443840670534886370575777393588 : EdwardsBridge.F) (4594970980626351917564118013426672957106942268045988082518313943354065740982 : EdwardsBridge.F)
      (4659785748131470957350889768008337433102634998612055297474102521591818989547 : EdwardsBridge.F) (8166656644825646396350918434139132105666395453710223157400347085341631845453 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX208 rho : F)
      (rvkAccY208 rho : F) (rho 210 : F)
      (rho 1470 : F) (rho 1471 : F) (rho 1472 : F)
      (rho 1474 : F) (rho 1473 : F) (rho 1475 : F)
      (rho 1476 : F) (rho 1477 : F) hacc
      (by rw [C_eq_L209]; simp only [L209])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_209 h14_209 h15_209 h16_209 h17_209 h18_209 hSelX_209 hSelY_209 hbrow209
  exact hr209

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

