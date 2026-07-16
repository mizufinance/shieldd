import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas48
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

theorem rvk_step198 (rho : Nat -> F)
    (r198 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow198 rho)
    (r1381 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1381 rho)
    (r1382 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1382 rho)
    (r1383 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1383 rho)
    (r1384 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1384 rho)
    (r1385 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1385 rho)
    (r1386 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1386 rho)
    (r1387 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1387 rho)
    (r1388 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1388 rho)
    (hacc : onCurve (rvkRvkAcc rho 198)) :
    RvkFixedBaseLadder.FixedStepRel 198 (rho 199)
      (rvkRvkAcc rho 198) (rvkRvkAcc rho (198 + 1)) := by
  have hbrow198 : (1*(rho 199))*(1 + (-1)*(rho 199)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow198] using r198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1381 at r1381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1382 at r1382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1383 at r1383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1384 at r1384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1385 at r1385
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1386 at r1386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1387 at r1387
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1388 at r1388
  have h13_198 : rho 1382 = rvkAccX197 rho + rvkAccY197 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1183 rho
    rw [hLc] at r1381
    linear_combination -r1381
  have h14_198 : (4650229456266980847280092519007379057609683464313568847213917527113962390902*rvkAccX197 rho + 8201724621582765653030734371596669718643778063996307403175296213974527753626*rho 1) * (7930667003114803381391199940435962325856755079631497576389101972968987952268*rvkAccY197 rho + 7930667003114803381391199940435962325856755079631497576389101972968987952268 + 8241996517340196507168575437887209602961606946337645162989804468942467556775*rho 1) = rho 1383 := by
    have hL := rvk_lc1184 rho
    have hR := rvk_lc1185 rho
    rw [hL, hR] at r1382
    linear_combination r1382
  have h15_198 : 4132924427378814454778895515404876912423432274353531912126941067650792723500*rvkAccX197 rho + 7930667003114803381391199940435962325856755079631497576389101972968987952268*rvkAccY197 rho + 7930667003114803381391199940435962325856755079631497576389101972968987952268 + 5851974162858534038613804364326995382127735363144039625317052220663312382705*rho 1 = rho 1384 := by
    have hLc := rvk_lc1186 rho
    rw [hLc] at r1383
    linear_combination r1383
  have h16_198 : rho 1385 * (1 + rho 1383) = rho 1384 := by
    linear_combination r1384
  have h17_198 : 4311537322049555969469929423376669618952467060800531915808292388266616515541*rvkAccX197 rho + 513794746313567042857624998345584205519144255522566251546131482948421286773*rvkAccY197 rho + 513794746313567042857624998345584205519144255522566251546131482948421286773 + 2592487586569836385635020574454551149248163972010024202618181235254096856336*rho 1 = rho 1386 := by
    have hLc := rvk_lc1187 rho
    rw [hLc] at r1385
    linear_combination r1385
  have h18_198 : rho 1387 * (1 + (-1)*rho 1383) = rho 1386 + 3619129681065247411921270517059292706904288018830965660580809584702371436727*rho 1382 := by
    linear_combination r1386
  have hSelX_198 : (1*rho 199) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX197 rho + rho 1385) = rho 1388 := by
    have hLc := rvk_lc1188 rho
    rw [hLc] at r1387
    linear_combination r1387
  have hSelY_198 : (1*rho 199) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY197 rho + rho 1387) = rho 1389 := by
    have hLc := rvk_lc1189 rho
    rw [hLc] at r1388
    linear_combination r1388
  have hr198 : RvkFixedBaseLadder.FixedStepRel 198 (rho 199) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX197 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY197 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX198 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY198 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX198_succ, rvkAccY198_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 198
      (7930667003114803381391199940435962325856755079631497576389101972968987952268 : EdwardsBridge.F) (4132924427378814454778895515404876912423432274353531912126941067650792723500 : EdwardsBridge.F) (3619129681065247411921270517059292706904288018830965660580809584702371436727 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4650229456266980847280092519007379057609683464313568847213917527113962390902 : EdwardsBridge.F) (8201724621582765653030734371596669718643778063996307403175296213974527753626 : EdwardsBridge.F)
      (8241996517340196507168575437887209602961606946337645162989804468942467556775 : EdwardsBridge.F) (5851974162858534038613804364326995382127735363144039625317052220663312382705 : EdwardsBridge.F) (4311537322049555969469929423376669618952467060800531915808292388266616515541 : EdwardsBridge.F)
      (513794746313567042857624998345584205519144255522566251546131482948421286773 : EdwardsBridge.F) (2592487586569836385635020574454551149248163972010024202618181235254096856336 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX197 rho : F)
      (rvkAccY197 rho : F) (rho 199 : F)
      (rho 1382 : F) (rho 1383 : F) (rho 1384 : F)
      (rho 1386 : F) (rho 1385 : F) (rho 1387 : F)
      (rho 1388 : F) (rho 1389 : F) hacc
      (by rw [C_eq_L198]; simp only [L198])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_198 h14_198 h15_198 h16_198 h17_198 h18_198 hSelX_198 hSelY_198 hbrow198
  exact hr198

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

