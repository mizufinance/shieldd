import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas43
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

theorem rvk_step193 (rho : Nat -> F)
    (r193 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow193 rho)
    (r1341 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1341 rho)
    (r1342 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1342 rho)
    (r1343 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1343 rho)
    (r1344 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1344 rho)
    (r1345 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1345 rho)
    (r1346 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1346 rho)
    (r1347 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1347 rho)
    (r1348 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1348 rho)
    (hacc : onCurve (rvkRvkAcc rho 193)) :
    RvkFixedBaseLadder.FixedStepRel 193 (rho 194)
      (rvkRvkAcc rho 193) (rvkRvkAcc rho (193 + 1)) := by
  have hbrow193 : (1*(rho 194))*(1 + (-1)*(rho 194)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow193] using r193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1341 at r1341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1342 at r1342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1343 at r1343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1344 at r1344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1345 at r1345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1346 at r1346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1347 at r1347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1348 at r1348
  have h13_193 : rho 1342 = rvkAccX192 rho + rvkAccY192 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1148 rho
    rw [hLc] at r1341
    linear_combination -r1341
  have h14_193 : (7882950453032646771230046134550116284898253460684190996110334416969682605090*rvkAccX192 rho + 1348957722018839877246664846297409567079768698538167297787547392482862052295*rho 1) * (4724941216644483096082844278014312576843795915813928318368929534344074203769*rvkAccY192 rho + 4724941216644483096082844278014312576843795915813928318368929534344074203769 + 6733657549797827815822559986917006574523566983426091644258847440846821914421*rho 1) = rho 1343 := by
    have hL := rvk_lc1149 rho
    have hR := rvk_lc1150 rho
    rw [hL, hR] at r1342
    linear_combination r1342
  have h15_193 : 234615450399068981126740323089512902479012875961096156476244525408180949833*rvkAccX192 rho + 4724941216644483096082844278014312576843795915813928318368929534344074203769*rvkAccY192 rho + 4724941216644483096082844278014312576843795915813928318368929534344074203769 + 2518861336485691516620315252446210560042343405566512006645956178307606333348*rho 1 = rho 1344 := by
    have hLc := rvk_lc1151 rho
    rw [hLc] at r1343
    linear_combination r1343
  have h16_193 : rho 1345 * (1 + rho 1343) = rho 1344 := by
    linear_combination r1344
  have h17_193 : 8209846299029301443122084615692033628896886459192967671458988930509228289208*rvkAccX192 rho + 3719520532783887328165980660767233954532103419340135509566303921573335035272*rvkAccY192 rho + 3719520532783887328165980660767233954532103419340135509566303921573335035272 + 5925600412942678907628509686335335971333555929587551821289277277609802905693*rho 1 = rho 1346 := by
    have hLc := rvk_lc1152 rho
    rw [hLc] at r1345
    linear_combination r1345
  have h18_193 : rho 1347 * (1 + (-1)*rho 1343) = rho 1346 + 4959556667043552077209584601103825479322808791775024474845174059752255153602*rho 1342 := by
    linear_combination r1346
  have hSelX_193 : (1*rho 194) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX192 rho + rho 1345) = rho 1348 := by
    have hLc := rvk_lc1153 rho
    rw [hLc] at r1347
    linear_combination r1347
  have hSelY_193 : (1*rho 194) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY192 rho + rho 1347) = rho 1349 := by
    have hLc := rvk_lc1154 rho
    rw [hLc] at r1348
    linear_combination r1348
  have hr193 : RvkFixedBaseLadder.FixedStepRel 193 (rho 194) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX192 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY192 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX193 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY193 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX193_succ, rvkAccY193_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 193
      (4724941216644483096082844278014312576843795915813928318368929534344074203769 : EdwardsBridge.F) (234615450399068981126740323089512902479012875961096156476244525408180949833 : EdwardsBridge.F) (4959556667043552077209584601103825479322808791775024474845174059752255153602 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (7882950453032646771230046134550116284898253460684190996110334416969682605090 : EdwardsBridge.F) (1348957722018839877246664846297409567079768698538167297787547392482862052295 : EdwardsBridge.F)
      (6733657549797827815822559986917006574523566983426091644258847440846821914421 : EdwardsBridge.F) (2518861336485691516620315252446210560042343405566512006645956178307606333348 : EdwardsBridge.F) (8209846299029301443122084615692033628896886459192967671458988930509228289208 : EdwardsBridge.F)
      (3719520532783887328165980660767233954532103419340135509566303921573335035272 : EdwardsBridge.F) (5925600412942678907628509686335335971333555929587551821289277277609802905693 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX192 rho : F)
      (rvkAccY192 rho : F) (rho 194 : F)
      (rho 1342 : F) (rho 1343 : F) (rho 1344 : F)
      (rho 1346 : F) (rho 1345 : F) (rho 1347 : F)
      (rho 1348 : F) (rho 1349 : F) hacc
      (by rw [C_eq_L193]; simp only [L193])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_193 h14_193 h15_193 h16_193 h17_193 h18_193 hSelX_193 hSelY_193 hbrow193
  exact hr193

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

