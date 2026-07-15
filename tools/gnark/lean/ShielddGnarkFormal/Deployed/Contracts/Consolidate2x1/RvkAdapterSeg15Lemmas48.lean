import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc1075 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1075 rho = seg15AccX197 rho + seg15AccY197 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1075, Seg15.relationLc1075Part0, Seg15.relationLc1075Part1, Seg15.relationLc1075Part2, Seg15.relationLc1075Part3, Seg15.relationLc1075Part4, Seg15.relationLc1075Part5, Seg15.relationLc1075Part6, Seg15.relationLc1075Part7, Seg15.relationLc1075Part8, Seg15.relationLc1075Part9, Seg15.relationLc1075Part10, Seg15.relationLc1075Part11, Seg15.relationLc1075Part12]
  rw [seg15AccX197_sum, seg15AccY197_sum]
  ring

theorem seg15_lc1076 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1076 rho = 4650229456266980847280092519007379057609683464313568847213917527113962390902*seg15AccX197 rho + 8201724621582765653030734371596669718643778063996307403175296213974527753626*rho 16136 := by
  simp only [Seg15.relationLc1076, Seg15.relationLc1076Part0, Seg15.relationLc1076Part1, Seg15.relationLc1076Part2, Seg15.relationLc1076Part3, Seg15.relationLc1076Part4, Seg15.relationLc1076Part5, Seg15.relationLc1076Part6]
  rw [seg15AccX197_sum]
  ring

theorem seg15_lc1077 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1077 rho = 7930667003114803381391199940435962325856755079631497576389101972968987952268*seg15AccY197 rho + 7930667003114803381391199940435962325856755079631497576389101972968987952268 + 8241996517340196507168575437887209602961606946337645162989804468942467556775*rho 16136 := by
  simp only [Seg15.relationLc1077, Seg15.relationLc1077Part0, Seg15.relationLc1077Part1, Seg15.relationLc1077Part2, Seg15.relationLc1077Part3, Seg15.relationLc1077Part4, Seg15.relationLc1077Part5, Seg15.relationLc1077Part6]
  rw [seg15AccY197_sum]
  ring

theorem seg15_lc1078 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1078 rho = 4132924427378814454778895515404876912423432274353531912126941067650792723500*seg15AccX197 rho + 7930667003114803381391199940435962325856755079631497576389101972968987952268*seg15AccY197 rho + 7930667003114803381391199940435962325856755079631497576389101972968987952268 + 5851974162858534038613804364326995382127735363144039625317052220663312382705*rho 16136 := by
  simp only [Seg15.relationLc1078, Seg15.relationLc1078Part0, Seg15.relationLc1078Part1, Seg15.relationLc1078Part2, Seg15.relationLc1078Part3, Seg15.relationLc1078Part4, Seg15.relationLc1078Part5, Seg15.relationLc1078Part6, Seg15.relationLc1078Part7, Seg15.relationLc1078Part8, Seg15.relationLc1078Part9, Seg15.relationLc1078Part10, Seg15.relationLc1078Part11, Seg15.relationLc1078Part12]
  rw [seg15AccX197_sum, seg15AccY197_sum]
  ring

theorem seg15_lc1079 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1079 rho = 4311537322049555969469929423376669618952467060800531915808292388266616515541*seg15AccX197 rho + 513794746313567042857624998345584205519144255522566251546131482948421286773*seg15AccY197 rho + 513794746313567042857624998345584205519144255522566251546131482948421286773 + 2592487586569836385635020574454551149248163972010024202618181235254096856336*rho 16136 := by
  simp only [Seg15.relationLc1079, Seg15.relationLc1079Part0, Seg15.relationLc1079Part1, Seg15.relationLc1079Part2, Seg15.relationLc1079Part3, Seg15.relationLc1079Part4, Seg15.relationLc1079Part5, Seg15.relationLc1079Part6, Seg15.relationLc1079Part7, Seg15.relationLc1079Part8, Seg15.relationLc1079Part9, Seg15.relationLc1079Part10, Seg15.relationLc1079Part11, Seg15.relationLc1079Part12]
  rw [seg15AccX197_sum, seg15AccY197_sum]
  ring

theorem seg15_lc1080 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1080 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX197 rho + rho 17519 := by
  simp only [Seg15.relationLc1080, Seg15.relationLc1080Part0, Seg15.relationLc1080Part1, Seg15.relationLc1080Part2, Seg15.relationLc1080Part3, Seg15.relationLc1080Part4, Seg15.relationLc1080Part5, Seg15.relationLc1080Part6]
  rw [seg15AccX197_sum]
  ring

theorem seg15_lc1081 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1081 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY197 rho + rho 17521 := by
  simp only [Seg15.relationLc1081, Seg15.relationLc1081Part0, Seg15.relationLc1081Part1, Seg15.relationLc1081Part2, Seg15.relationLc1081Part3, Seg15.relationLc1081Part4, Seg15.relationLc1081Part5, Seg15.relationLc1081Part6]
  rw [seg15AccY197_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
