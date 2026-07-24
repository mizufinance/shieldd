import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas44
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

theorem rvk_step194 (rho : Nat -> F)
    (r194 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow194 rho)
    (r1349 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1349 rho)
    (r1350 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1350 rho)
    (r1351 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1351 rho)
    (r1352 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1352 rho)
    (r1353 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1353 rho)
    (r1354 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1354 rho)
    (r1355 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1355 rho)
    (r1356 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1356 rho)
    (hacc : onCurve (rvkRvkAcc rho 194)) :
    RvkFixedBaseLadder.FixedStepRel 194 (rho 195)
      (rvkRvkAcc rho 194) (rvkRvkAcc rho (194 + 1)) := by
  have hbrow194 : (1*(rho 195))*(1 + (-1)*(rho 195)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow194] using r194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1349 at r1349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1350 at r1350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1351 at r1351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1352 at r1352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1353 at r1353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1354 at r1354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1355 at r1355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1356 at r1356
  have h13_194 : rho 1350 = rvkAccX193 rho + rvkAccY193 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1155 rho
    rw [hLc] at r1349
    linear_combination -r1349
  have h14_194 : (665401531204958410359485285224444089030571492870617266963020838851334996806*rvkAccX193 rho + 7203158281258429186792596937609427838114052691230851337540150899267240447593*rho 1) * (7949996763731572641602336285231421879040211494384593969577683157594223965682*rvkAccY193 rho + 7949996763731572641602336285231421879040211494384593969577683157594223965682 + 129542748202106780674562906588490057102641958601250660787290847505537091807*rho 1) = rho 1351 := by
    have hL := rvk_lc1156 rho
    have hR := rvk_lc1157 rho
    rw [hL, hR] at r1350
    linear_combination r1350
  have h15_194 : 8240628480253571985798045483221854888641238600306868845422056024125578871794*rvkAccX193 rho + 7949996763731572641602336285231421879040211494384593969577683157594223965682*rvkAccY193 rho + 7949996763731572641602336285231421879040211494384593969577683157594223965682 + 4872677566246388365816171543831493150466309394917875322659417988232181682956*rho 1 = rho 1352 := by
    have hLc := rvk_lc1158 rho
    rw [hLc] at r1351
    linear_combination r1351
  have h16_194 : rho 1353 * (1 + rho 1351) = rho 1352 := by
    linear_combination r1352
  have h17_194 : 203833269174798438450779455559691642734660734847194982513177431791830367247*rvkAccX193 rho + 494464985696797782646488653550124652335687840769469858357550298323185273359*rvkAccY193 rho + 494464985696797782646488653550124652335687840769469858357550298323185273359 + 3571784183181982058432653394950053380909589940236188505275815467685227556085*rho 1 = rho 1354 := by
    have hLc := rvk_lc1159 rho
    rw [hLc] at r1353
    linear_combination r1353
  have h18_194 : rho 1355 * (1 + (-1)*rho 1351) = rho 1354 + 7746163494556774203151556829671730236305550759537398987064505725802393598435*rho 1350 := by
    linear_combination r1354
  have hSelX_194 : (1*rho 195) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX193 rho + rho 1353) = rho 1356 := by
    have hLc := rvk_lc1160 rho
    rw [hLc] at r1355
    linear_combination r1355
  have hSelY_194 : (1*rho 195) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY193 rho + rho 1355) = rho 1357 := by
    have hLc := rvk_lc1161 rho
    rw [hLc] at r1356
    linear_combination r1356
  have hr194 : RvkFixedBaseLadder.FixedStepRel 194 (rho 195) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX193 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY193 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX194 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY194 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX194_succ, rvkAccY194_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 194
      (7949996763731572641602336285231421879040211494384593969577683157594223965682 : EdwardsBridge.F) (8240628480253571985798045483221854888641238600306868845422056024125578871794 : EdwardsBridge.F) (7746163494556774203151556829671730236305550759537398987064505725802393598435 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (665401531204958410359485285224444089030571492870617266963020838851334996806 : EdwardsBridge.F) (7203158281258429186792596937609427838114052691230851337540150899267240447593 : EdwardsBridge.F)
      (129542748202106780674562906588490057102641958601250660787290847505537091807 : EdwardsBridge.F) (4872677566246388365816171543831493150466309394917875322659417988232181682956 : EdwardsBridge.F) (203833269174798438450779455559691642734660734847194982513177431791830367247 : EdwardsBridge.F)
      (494464985696797782646488653550124652335687840769469858357550298323185273359 : EdwardsBridge.F) (3571784183181982058432653394950053380909589940236188505275815467685227556085 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX193 rho : F)
      (rvkAccY193 rho : F) (rho 195 : F)
      (rho 1350 : F) (rho 1351 : F) (rho 1352 : F)
      (rho 1354 : F) (rho 1353 : F) (rho 1355 : F)
      (rho 1356 : F) (rho 1357 : F) hacc
      (by rw [C_eq_L194]; simp only [L194])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_194 h14_194 h15_194 h16_194 h17_194 h18_194 hSelX_194 hSelY_194 hbrow194
  exact hr194

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

