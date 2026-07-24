import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas40
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

theorem rvk_step190 (rho : Nat -> F)
    (r190 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow190 rho)
    (r1317 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1317 rho)
    (r1318 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1318 rho)
    (r1319 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1319 rho)
    (r1320 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1320 rho)
    (r1321 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1321 rho)
    (r1322 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1322 rho)
    (r1323 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1323 rho)
    (r1324 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1324 rho)
    (hacc : onCurve (rvkRvkAcc rho 190)) :
    RvkFixedBaseLadder.FixedStepRel 190 (rho 191)
      (rvkRvkAcc rho 190) (rvkRvkAcc rho (190 + 1)) := by
  have hbrow190 : (1*(rho 191))*(1 + (-1)*(rho 191)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow190] using r190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1317 at r1317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1318 at r1318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1319 at r1319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1320 at r1320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1321 at r1321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1322 at r1322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1323 at r1323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1324 at r1324
  have h13_190 : rho 1318 = rvkAccX189 rho + rvkAccY189 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1127 rho
    rw [hLc] at r1317
    linear_combination -r1317
  have h14_190 : (1592610760452662891257191408783115440613478706358284711365675255490931905864*rvkAccX189 rho + 2008230782896318434545456926310126833570643313191120532079101557439023108078*rho 1) * (6344949702198386215630756124622930373723578036744856127612445722441346277498*rvkAccY189 rho + 6344949702198386215630756124622930373723578036744856127612445722441346277498 + 1112727851671160842939416475354140523129346304208684762595779127643266167193*rho 1) = rho 1319 := by
    have hL := rvk_lc1128 rho
    have hR := rvk_lc1129 rho
    rw [hL, hR] at r1318
    linear_combination r1318
  have h15_190 : 4855883041879355210132891794131853505607597028755037124738452892480645739861*rvkAccX189 rho + 6344949702198386215630756124622930373723578036744856127612445722441346277498*rvkAccY189 rho + 6344949702198386215630756124622930373723578036744856127612445722441346277498 + 4302777201846820218147114162237971942902094329605565910628278457255713358472*rho 1 = rho 1320 := by
    have hLc := rvk_lc1130 rho
    rw [hLc] at r1319
    linear_combination r1319
  have h16_190 : rho 1321 * (1 + rho 1319) = rho 1320 := by
    linear_combination r1320
  have h17_190 : 3588578707549015214115933144649693025768302306399026703196780563436763499180*rvkAccX189 rho + 2099512047229984208618068814158616157652321298409207700322787733476062961543*rvkAccY189 rho + 2099512047229984208618068814158616157652321298409207700322787733476062961543 + 4141684547581550206101710776543574588473805005548497917306954998661695880569*rho 1 = rho 1322 := by
    have hLc := rvk_lc1131 rho
    rw [hLc] at r1321
    linear_combination r1321
  have h18_190 : rho 1323 * (1 + (-1)*rho 1319) = rho 1322 + 2756370994649371001514822979973237347955275730345829424415665159004582778318*rho 1318 := by
    linear_combination r1322
  have hSelX_190 : (1*rho 191) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX189 rho + rho 1321) = rho 1324 := by
    have hLc := rvk_lc1132 rho
    rw [hLc] at r1323
    linear_combination r1323
  have hSelY_190 : (1*rho 191) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY189 rho + rho 1323) = rho 1325 := by
    have hLc := rvk_lc1133 rho
    rw [hLc] at r1324
    linear_combination r1324
  have hr190 : RvkFixedBaseLadder.FixedStepRel 190 (rho 191) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX189 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY189 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX190 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY190 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX190_succ, rvkAccY190_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 190
      (6344949702198386215630756124622930373723578036744856127612445722441346277498 : EdwardsBridge.F) (4855883041879355210132891794131853505607597028755037124738452892480645739861 : EdwardsBridge.F) (2756370994649371001514822979973237347955275730345829424415665159004582778318 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (1592610760452662891257191408783115440613478706358284711365675255490931905864 : EdwardsBridge.F) (2008230782896318434545456926310126833570643313191120532079101557439023108078 : EdwardsBridge.F)
      (1112727851671160842939416475354140523129346304208684762595779127643266167193 : EdwardsBridge.F) (4302777201846820218147114162237971942902094329605565910628278457255713358472 : EdwardsBridge.F) (3588578707549015214115933144649693025768302306399026703196780563436763499180 : EdwardsBridge.F)
      (2099512047229984208618068814158616157652321298409207700322787733476062961543 : EdwardsBridge.F) (4141684547581550206101710776543574588473805005548497917306954998661695880569 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX189 rho : F)
      (rvkAccY189 rho : F) (rho 191 : F)
      (rho 1318 : F) (rho 1319 : F) (rho 1320 : F)
      (rho 1322 : F) (rho 1321 : F) (rho 1323 : F)
      (rho 1324 : F) (rho 1325 : F) hacc
      (by rw [C_eq_L190]; simp only [L190])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_190 h14_190 h15_190 h16_190 h17_190 h18_190 hSelX_190 hSelY_190 hbrow190
  exact hr190

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

