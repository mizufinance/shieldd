import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc795 (rho : Nat -> Seg15.F) :
    Seg15.relationLc795 rho = seg15AccX157 rho + seg15AccY157 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc795, Seg15.relationLc795Part0, Seg15.relationLc795Part1, Seg15.relationLc795Part2, Seg15.relationLc795Part3, Seg15.relationLc795Part4, Seg15.relationLc795Part5, Seg15.relationLc795Part6, Seg15.relationLc795Part7, Seg15.relationLc795Part8, Seg15.relationLc795Part9]
  rw [seg15AccX157_sum, seg15AccY157_sum]
  ring

theorem seg15_lc796 (rho : Nat -> Seg15.F) :
    Seg15.relationLc796 rho = 8319606341510190076462738236530222533389508983625641605145362805266453680351*seg15AccX157 rho + 2846529893090264515457185888102121605185335423217303110337743380709220364427*rho 16136 := by
  simp only [Seg15.relationLc796, Seg15.relationLc796Part0, Seg15.relationLc796Part1, Seg15.relationLc796Part2, Seg15.relationLc796Part3, Seg15.relationLc796Part4]
  rw [seg15AccX157_sum]
  ring

theorem seg15_lc797 (rho : Nat -> Seg15.F) :
    Seg15.relationLc797 rho = 7070474878759181210512911110590621318148555949608887207137152425514975125766*seg15AccY157 rho + 7070474878759181210512911110590621318148555949608887207137152425514975125766 + 579700466988638287347600972519274716365196157612970975144727948166074860172*rho 16136 := by
  simp only [Seg15.relationLc797, Seg15.relationLc797Part0, Seg15.relationLc797Part1, Seg15.relationLc797Part2, Seg15.relationLc797Part3, Seg15.relationLc797Part4]
  rw [seg15AccY157_sum]
  ring

theorem seg15_lc798 (rho : Nat -> Seg15.F) :
    Seg15.relationLc798 rho = 3857408923801136380375899479912705358921136938815319318215105030955105526090*seg15AccX157 rho + 7070474878759181210512911110590621318148555949608887207137152425514975125766*seg15AccY157 rho + 7070474878759181210512911110590621318148555949608887207137152425514975125766 + 5765838525605889992576673282127970822723183116280301562344395543037807186814*rho 16136 := by
  simp only [Seg15.relationLc798, Seg15.relationLc798Part0, Seg15.relationLc798Part1, Seg15.relationLc798Part2, Seg15.relationLc798Part3, Seg15.relationLc798Part4, Seg15.relationLc798Part5, Seg15.relationLc798Part6, Seg15.relationLc798Part7, Seg15.relationLc798Part8, Seg15.relationLc798Part9]
  rw [seg15AccX157_sum, seg15AccY157_sum]
  ring

theorem seg15_lc799 (rho : Nat -> Seg15.F) :
    Seg15.relationLc799 rho = 4587052825627234043872925458868841172454762396338744509720128424962303712951*seg15AccX157 rho + 1373986870669189213735913828190925213227343385545176620798081030402434113275*seg15AccY157 rho + 1373986870669189213735913828190925213227343385545176620798081030402434113275 + 2678623223822480431672151656653575708652716218873762265590837912879602052227*rho 16136 := by
  simp only [Seg15.relationLc799, Seg15.relationLc799Part0, Seg15.relationLc799Part1, Seg15.relationLc799Part2, Seg15.relationLc799Part3, Seg15.relationLc799Part4, Seg15.relationLc799Part5, Seg15.relationLc799Part6, Seg15.relationLc799Part7, Seg15.relationLc799Part8, Seg15.relationLc799Part9]
  rw [seg15AccX157_sum, seg15AccY157_sum]
  ring

theorem seg15_lc800 (rho : Nat -> Seg15.F) :
    Seg15.relationLc800 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX157 rho + rho 17199 := by
  simp only [Seg15.relationLc800, Seg15.relationLc800Part0, Seg15.relationLc800Part1, Seg15.relationLc800Part2, Seg15.relationLc800Part3, Seg15.relationLc800Part4]
  rw [seg15AccX157_sum]
  ring

theorem seg15_lc801 (rho : Nat -> Seg15.F) :
    Seg15.relationLc801 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY157 rho + rho 17201 := by
  simp only [Seg15.relationLc801, Seg15.relationLc801Part0, Seg15.relationLc801Part1, Seg15.relationLc801Part2, Seg15.relationLc801Part3, Seg15.relationLc801Part4]
  rw [seg15AccY157_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
