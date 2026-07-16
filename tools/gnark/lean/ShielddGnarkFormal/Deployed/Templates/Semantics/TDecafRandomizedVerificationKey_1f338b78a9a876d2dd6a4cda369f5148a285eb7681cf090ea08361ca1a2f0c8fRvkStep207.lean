import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas57
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

theorem rvk_step207 (rho : Nat -> F)
    (r207 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow207 rho)
    (r1453 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1453 rho)
    (r1454 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1454 rho)
    (r1455 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1455 rho)
    (r1456 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1456 rho)
    (r1457 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1457 rho)
    (r1458 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1458 rho)
    (r1459 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1459 rho)
    (r1460 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1460 rho)
    (hacc : onCurve (rvkRvkAcc rho 207)) :
    RvkFixedBaseLadder.FixedStepRel 207 (rho 208)
      (rvkRvkAcc rho 207) (rvkRvkAcc rho (207 + 1)) := by
  have hbrow207 : (1*(rho 208))*(1 + (-1)*(rho 208)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow207] using r207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1453 at r1453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1454 at r1454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1455 at r1455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1456 at r1456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1457 at r1457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1458 at r1458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1459 at r1459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1460 at r1460
  have h13_207 : rho 1454 = rvkAccX206 rho + rvkAccY206 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1246 rho
    rw [hLc] at r1453
    linear_combination -r1453
  have h14_207 : (5905365879735766667841684091558409867820953894323093881227478821587200358292*rvkAccX206 rho + 7212764438683679537947725008823269311972987213902295979621436722051371346111*rho 1) * (4565390105889309255164458630479635602181689632094937719216497752358944931276*rvkAccY206 rho + 4565390105889309255164458630479635602181689632094937719216497752358944931276 + 5884707577782438660459430595081945110501492710070465762925982429225625531051*rho 1) = rho 1455 := by
    have hL := rvk_lc1247 rho
    have hR := rvk_lc1248 rho
    rw [hL, hR] at r1454
    linear_combination r1454
  have h15_207 : 1564501649722010868527949296547647441544835710773070100528640509989877181391*rvkAccX206 rho + 4565390105889309255164458630479635602181689632094937719216497752358944931276*rvkAccY206 rho + 4565390105889309255164458630479635602181689632094937719216497752358944931276 + 5487373825472086693849157757863494966617089989874130499299661029863117040539*rho 1 = rho 1456 := by
    have hLc := rvk_lc1249 rho
    rw [hLc] at r1455
    linear_combination r1455
  have h16_207 : rho 1457 * (1 + rho 1455) = rho 1456 := by
    linear_combination r1456
  have h17_207 : 6879960099706359555720875642233899089831063624380993727406592945927532057650*rvkAccX206 rho + 3879071643539061169084366308301910929194209703059126108718735703558464307765*rvkAccY206 rho + 3879071643539061169084366308301910929194209703059126108718735703558464307765 + 2957087923956283730399667180918051564758809345279933328635572426054292198502*rho 1 = rho 1458 := by
    have hLc := rvk_lc1250 rho
    rw [hLc] at r1457
    linear_combination r1457
  have h18_207 : rho 1459 * (1 + (-1)*rho 1455) = rho 1458 + 6129891755611320123692407927027283043726525342868007819745138262348822112667*rho 1454 := by
    linear_combination r1458
  have hSelX_207 : (1*rho 208) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX206 rho + rho 1457) = rho 1460 := by
    have hLc := rvk_lc1251 rho
    rw [hLc] at r1459
    linear_combination r1459
  have hSelY_207 : (1*rho 208) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY206 rho + rho 1459) = rho 1461 := by
    have hLc := rvk_lc1252 rho
    rw [hLc] at r1460
    linear_combination r1460
  have hr207 : RvkFixedBaseLadder.FixedStepRel 207 (rho 208) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX206 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY206 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX207 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY207 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX207_succ, rvkAccY207_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 207
      (4565390105889309255164458630479635602181689632094937719216497752358944931276 : EdwardsBridge.F) (1564501649722010868527949296547647441544835710773070100528640509989877181391 : EdwardsBridge.F) (6129891755611320123692407927027283043726525342868007819745138262348822112667 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (5905365879735766667841684091558409867820953894323093881227478821587200358292 : EdwardsBridge.F) (7212764438683679537947725008823269311972987213902295979621436722051371346111 : EdwardsBridge.F)
      (5884707577782438660459430595081945110501492710070465762925982429225625531051 : EdwardsBridge.F) (5487373825472086693849157757863494966617089989874130499299661029863117040539 : EdwardsBridge.F) (6879960099706359555720875642233899089831063624380993727406592945927532057650 : EdwardsBridge.F)
      (3879071643539061169084366308301910929194209703059126108718735703558464307765 : EdwardsBridge.F) (2957087923956283730399667180918051564758809345279933328635572426054292198502 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX206 rho : F)
      (rvkAccY206 rho : F) (rho 208 : F)
      (rho 1454 : F) (rho 1455 : F) (rho 1456 : F)
      (rho 1458 : F) (rho 1457 : F) (rho 1459 : F)
      (rho 1460 : F) (rho 1461 : F) hacc
      (by rw [C_eq_L207]; simp only [L207])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_207 h14_207 h15_207 h16_207 h17_207 h18_207 hSelX_207 hSelY_207 hbrow207
  exact hr207

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

