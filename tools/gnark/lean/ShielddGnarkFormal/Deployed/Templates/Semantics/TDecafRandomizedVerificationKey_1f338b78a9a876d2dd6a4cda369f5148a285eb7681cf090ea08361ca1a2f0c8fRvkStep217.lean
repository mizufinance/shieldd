import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas67
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

theorem rvk_step217 (rho : Nat -> F)
    (r217 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow217 rho)
    (r1533 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1533 rho)
    (r1534 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1534 rho)
    (r1535 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1535 rho)
    (r1536 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1536 rho)
    (r1537 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1537 rho)
    (r1538 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1538 rho)
    (r1539 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1539 rho)
    (r1540 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1540 rho)
    (hacc : onCurve (rvkRvkAcc rho 217)) :
    RvkFixedBaseLadder.FixedStepRel 217 (rho 218)
      (rvkRvkAcc rho 217) (rvkRvkAcc rho (217 + 1)) := by
  have hbrow217 : (1*(rho 218))*(1 + (-1)*(rho 218)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow217] using r217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1533 at r1533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1534 at r1534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1535 at r1535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1536 at r1536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1537 at r1537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1538 at r1538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1539 at r1539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1540 at r1540
  have h13_217 : rho 1534 = rvkAccX216 rho + rvkAccY216 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1316 rho
    rw [hLc] at r1533
    linear_combination -r1533
  have h14_217 : (3330418736367948331367250765108025834547152750757290585022127288549783031492*rvkAccX216 rho + 7732680193357595775397599743496675629449255768853070406785728643839962901504*rho 1) * (6513009797142566324112437740216326258495380864073566594591358293644236642463*rvkAccY216 rho + 6513009797142566324112437740216326258495380864073566594591358293644236642463 + 567370397628330717217018112115180285802905338087350990356162266591331682719*rho 1) = rho 1535 := by
    have hL := rvk_lc1317 rho
    have hR := rvk_lc1318 rho
    rw [hL, hR] at r1534
    linear_combination r1534
  have h15_217 : 2111519046525914471578692512262554007621102664942759179303582716486657980307*rvkAccX216 rho + 6513009797142566324112437740216326258495380864073566594591358293644236642463*rvkAccY216 rho + 6513009797142566324112437740216326258495380864073566594591358293644236642463 + 3516127552242981502696547766275804820625694863086105159522174114052698548277*rho 1 = rho 1536 := by
    have hLc := rvk_lc1319 rho
    rw [hLc] at r1535
    linear_combination r1535
  have h16_217 : rho 1537 * (1 + rho 1535) = rho 1536 := by
    linear_combination r1536
  have h17_217 : 6332942702902455952670132426518992523754796670211304648631650739430751258734*rvkAccX216 rho + 1931451952285804100136387198565220272880518471080497233343875162273172596578*rvkAccY216 rho + 1931451952285804100136387198565220272880518471080497233343875162273172596578 + 4928334197185388921552277172505741710750204472067958668413059341864710690764*rho 1 = rho 1538 := by
    have hLc := rvk_lc1320 rho
    rw [hLc] at r1537
    linear_combination r1537
  have h18_217 : rho 1539 * (1 + (-1)*rho 1535) = rho 1538 + 180067094240110371442305313697333734740584193862261945959707554213485383729*rho 1534 := by
    linear_combination r1538
  have hSelX_217 : (1*rho 218) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX216 rho + rho 1537) = rho 1540 := by
    have hLc := rvk_lc1321 rho
    rw [hLc] at r1539
    linear_combination r1539
  have hSelY_217 : (1*rho 218) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY216 rho + rho 1539) = rho 1541 := by
    have hLc := rvk_lc1322 rho
    rw [hLc] at r1540
    linear_combination r1540
  have hr217 : RvkFixedBaseLadder.FixedStepRel 217 (rho 218) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX216 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY216 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX217 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY217 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX217_succ, rvkAccY217_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 217
      (6513009797142566324112437740216326258495380864073566594591358293644236642463 : EdwardsBridge.F) (2111519046525914471578692512262554007621102664942759179303582716486657980307 : EdwardsBridge.F) (180067094240110371442305313697333734740584193862261945959707554213485383729 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3330418736367948331367250765108025834547152750757290585022127288549783031492 : EdwardsBridge.F) (7732680193357595775397599743496675629449255768853070406785728643839962901504 : EdwardsBridge.F)
      (567370397628330717217018112115180285802905338087350990356162266591331682719 : EdwardsBridge.F) (3516127552242981502696547766275804820625694863086105159522174114052698548277 : EdwardsBridge.F) (6332942702902455952670132426518992523754796670211304648631650739430751258734 : EdwardsBridge.F)
      (1931451952285804100136387198565220272880518471080497233343875162273172596578 : EdwardsBridge.F) (4928334197185388921552277172505741710750204472067958668413059341864710690764 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX216 rho : F)
      (rvkAccY216 rho : F) (rho 218 : F)
      (rho 1534 : F) (rho 1535 : F) (rho 1536 : F)
      (rho 1538 : F) (rho 1537 : F) (rho 1539 : F)
      (rho 1540 : F) (rho 1541 : F) hacc
      (by rw [C_eq_L217]; simp only [L217])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_217 h14_217 h15_217 h16_217 h17_217 h18_217 hSelX_217 hSelY_217 hbrow217
  exact hr217

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

