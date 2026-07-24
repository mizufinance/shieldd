import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas41
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

theorem rvk_step191 (rho : Nat -> F)
    (r191 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow191 rho)
    (r1325 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1325 rho)
    (r1326 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1326 rho)
    (r1327 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1327 rho)
    (r1328 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1328 rho)
    (r1329 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1329 rho)
    (r1330 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1330 rho)
    (r1331 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1331 rho)
    (r1332 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1332 rho)
    (hacc : onCurve (rvkRvkAcc rho 191)) :
    RvkFixedBaseLadder.FixedStepRel 191 (rho 192)
      (rvkRvkAcc rho 191) (rvkRvkAcc rho (191 + 1)) := by
  have hbrow191 : (1*(rho 192))*(1 + (-1)*(rho 192)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow191] using r191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1325 at r1325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1326 at r1326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1327 at r1327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1328 at r1328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1329 at r1329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1330 at r1330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1331 at r1331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1332 at r1332
  have h13_191 : rho 1326 = rvkAccX190 rho + rvkAccY190 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1134 rho
    rw [hLc] at r1325
    linear_combination -r1325
  have h14_191 : (3074806479406243116681759056724828018775099874945181348407601938470416243855*rvkAccX190 rho + 7261441290400037072825735736814214977494481938255887747644323433960601499060*rho 1) * (5459776575051823876287356786403046195135262359226183039126648835687933207042*rvkAccY190 rho + 5459776575051823876287356786403046195135262359226183039126648835687933207042 + 1364466237063320993296490163865584146933087209969010022639352897183729935187*rho 1) = rho 1327 := by
    have hL := rvk_lc1135 rho
    have hR := rvk_lc1136 rho
    rw [hL, hR] at r1326
    linear_combination r1326
  have h15_191 : 7699146793911002446705708586713374371210857950641918888938113386142011075989*rvkAccX190 rho + 5459776575051823876287356786403046195135262359226183039126648835687933207042*rvkAccY190 rho + 5459776575051823876287356786403046195135262359226183039126648835687933207042 + 3966455931952028219918215727852228466415735625603414275445513584849122584577*rho 1 = rho 1328 := by
    have hLc := rvk_lc1137 rho
    rw [hLc] at r1327
    linear_combination r1327
  have h16_191 : rho 1329 * (1 + rho 1327) = rho 1328 := by
    linear_combination r1328
  have h17_191 : 745314955517367977543116352068172160165041384512144938997120069775398163052*rvkAccX190 rho + 2984685174376546547961468152378500336240636975927880788808584620229476031999*rvkAccY190 rho + 2984685174376546547961468152378500336240636975927880788808584620229476031999 + 4478005817476342204330609210929318064960163709550649552489719871068286654464*rho 1 = rho 1330 := by
    have hLc := rvk_lc1138 rho
    rw [hLc] at r1329
    linear_combination r1329
  have h18_191 : rho 1331 * (1 + (-1)*rho 1327) = rho 1330 + 4714461619534455898744240434334874034970220974714038100129528765912535043990*rho 1326 := by
    linear_combination r1330
  have hSelX_191 : (1*rho 192) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX190 rho + rho 1329) = rho 1332 := by
    have hLc := rvk_lc1139 rho
    rw [hLc] at r1331
    linear_combination r1331
  have hSelY_191 : (1*rho 192) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY190 rho + rho 1331) = rho 1333 := by
    have hLc := rvk_lc1140 rho
    rw [hLc] at r1332
    linear_combination r1332
  have hr191 : RvkFixedBaseLadder.FixedStepRel 191 (rho 192) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX190 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY190 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX191 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY191 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX191_succ, rvkAccY191_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 191
      (5459776575051823876287356786403046195135262359226183039126648835687933207042 : EdwardsBridge.F) (7699146793911002446705708586713374371210857950641918888938113386142011075989 : EdwardsBridge.F) (4714461619534455898744240434334874034970220974714038100129528765912535043990 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3074806479406243116681759056724828018775099874945181348407601938470416243855 : EdwardsBridge.F) (7261441290400037072825735736814214977494481938255887747644323433960601499060 : EdwardsBridge.F)
      (1364466237063320993296490163865584146933087209969010022639352897183729935187 : EdwardsBridge.F) (3966455931952028219918215727852228466415735625603414275445513584849122584577 : EdwardsBridge.F) (745314955517367977543116352068172160165041384512144938997120069775398163052 : EdwardsBridge.F)
      (2984685174376546547961468152378500336240636975927880788808584620229476031999 : EdwardsBridge.F) (4478005817476342204330609210929318064960163709550649552489719871068286654464 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX190 rho : F)
      (rvkAccY190 rho : F) (rho 192 : F)
      (rho 1326 : F) (rho 1327 : F) (rho 1328 : F)
      (rho 1330 : F) (rho 1329 : F) (rho 1331 : F)
      (rho 1332 : F) (rho 1333 : F) hacc
      (by rw [C_eq_L191]; simp only [L191])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_191 h14_191 h15_191 h16_191 h17_191 h18_191 hSelX_191 hSelY_191 hbrow191
  exact hr191

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

