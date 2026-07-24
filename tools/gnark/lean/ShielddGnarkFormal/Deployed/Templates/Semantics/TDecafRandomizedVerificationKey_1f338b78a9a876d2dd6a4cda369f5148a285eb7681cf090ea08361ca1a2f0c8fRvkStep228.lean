import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas78
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

theorem rvk_step228 (rho : Nat -> F)
    (r228 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow228 rho)
    (r1621 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1621 rho)
    (r1622 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1622 rho)
    (r1623 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1623 rho)
    (r1624 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1624 rho)
    (r1625 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1625 rho)
    (r1626 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1626 rho)
    (r1627 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1627 rho)
    (r1628 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1628 rho)
    (hacc : onCurve (rvkRvkAcc rho 228)) :
    RvkFixedBaseLadder.FixedStepRel 228 (rho 229)
      (rvkRvkAcc rho 228) (rvkRvkAcc rho (228 + 1)) := by
  have hbrow228 : (1*(rho 229))*(1 + (-1)*(rho 229)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow228] using r228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1621 at r1621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1622 at r1622
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1623 at r1623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1624 at r1624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1625 at r1625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1626 at r1626
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1627 at r1627
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1628 at r1628
  have h13_228 : rho 1622 = rvkAccX227 rho + rvkAccY227 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1393 rho
    rw [hLc] at r1621
    linear_combination -r1621
  have h14_228 : (4524962738914307807798123734612000272059917171761359026606240250240415183856*rvkAccX227 rho + 995428320130555585130336813757345081731043089115607568591490337949712775920*rho 1) * (6839982277198200993905199196894153768204783486790809026862012284204149052726*rvkAccY227 rho + 6839982277198200993905199196894153768204783486790809026862012284204149052726 + 5046918817069920361234594595240506121883550357632552607367130359059160801262*rho 1) = rho 1623 := by
    have hL := rvk_lc1394 rho
    have hR := rvk_lc1395 rho
    rw [hL, hR] at r1622
    linear_combination r1622
  have h15_228 : 3168520398821998675432544448650812386733185655048432861991799320028025515729*rvkAccX227 rho + 6839982277198200993905199196894153768204783486790809026862012284204149052726*rvkAccY227 rho + 6839982277198200993905199196894153768204783486790809026862012284204149052726 + 4242215223718301650013630925741887103030677810318664896385086087306011463934*rho 1 = rho 1624 := by
    have hLc := rvk_lc1396 rho
    rw [hLc] at r1623
    linear_combination r1623
  have h16_228 : rho 1625 * (1 + rho 1623) = rho 1624 := by
    linear_combination r1624
  have h17_228 : 5275941350606371748816280490130734144642713680105630965943434135889383723312*rvkAccX227 rho + 1604479472230169430343625741887392763171115848363254801073221171713260186315*rvkAccY227 rho + 1604479472230169430343625741887392763171115848363254801073221171713260186315 + 4202246525710068774235194013039659428345221524835398931550147368611397775107*rho 1 = rho 1626 := by
    have hLc := rvk_lc1397 rho
    rw [hLc] at r1625
    linear_combination r1625
  have h18_228 : rho 1627 * (1 + (-1)*rho 1623) = rho 1626 + 1564040926591829245088918706763419623562069806685178060918578148314765329414*rho 1622 := by
    linear_combination r1626
  have hSelX_228 : (1*rho 229) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX227 rho + rho 1625) = rho 1628 := by
    have hLc := rvk_lc1398 rho
    rw [hLc] at r1627
    linear_combination r1627
  have hSelY_228 : (1*rho 229) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY227 rho + rho 1627) = rho 1629 := by
    have hLc := rvk_lc1399 rho
    rw [hLc] at r1628
    linear_combination r1628
  have hr228 : RvkFixedBaseLadder.FixedStepRel 228 (rho 229) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX227 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY227 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX228 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY228 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX228_succ, rvkAccY228_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 228
      (6839982277198200993905199196894153768204783486790809026862012284204149052726 : EdwardsBridge.F) (3168520398821998675432544448650812386733185655048432861991799320028025515729 : EdwardsBridge.F) (1564040926591829245088918706763419623562069806685178060918578148314765329414 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4524962738914307807798123734612000272059917171761359026606240250240415183856 : EdwardsBridge.F) (995428320130555585130336813757345081731043089115607568591490337949712775920 : EdwardsBridge.F)
      (5046918817069920361234594595240506121883550357632552607367130359059160801262 : EdwardsBridge.F) (4242215223718301650013630925741887103030677810318664896385086087306011463934 : EdwardsBridge.F) (5275941350606371748816280490130734144642713680105630965943434135889383723312 : EdwardsBridge.F)
      (1604479472230169430343625741887392763171115848363254801073221171713260186315 : EdwardsBridge.F) (4202246525710068774235194013039659428345221524835398931550147368611397775107 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX227 rho : F)
      (rvkAccY227 rho : F) (rho 229 : F)
      (rho 1622 : F) (rho 1623 : F) (rho 1624 : F)
      (rho 1626 : F) (rho 1625 : F) (rho 1627 : F)
      (rho 1628 : F) (rho 1629 : F) hacc
      (by rw [C_eq_L228]; simp only [L228])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_228 h14_228 h15_228 h16_228 h17_228 h18_228 hSelX_228 hSelY_228 hbrow228
  exact hr228

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

