import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas8
import ShielddGnarkFormal.RvkFixedGenInst0ChoiceFree
import ShielddGnarkFormal.RvkFixedSplitRungChoiceFree
import ShielddGnarkFormal.RvkFixedBaseLiteralChoiceFree
import ShielddGnarkFormal.RvkFixedBaseLadderChoiceFree
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteralChoiceFree

theorem rvk_step158 (rho : Nat -> F)
    (r158 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow158 rho)
    (r1061 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1061 rho)
    (r1062 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1062 rho)
    (r1063 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1063 rho)
    (r1064 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1064 rho)
    (r1065 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1065 rho)
    (r1066 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1066 rho)
    (r1067 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1067 rho)
    (r1068 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1068 rho)
    (hacc : onCurve (rvkRvkAcc rho 158)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 158 (rho 159)
      (rvkRvkAcc rho 158) (rvkRvkAcc rho (158 + 1)) := by
  have hbrow158 : (1*(rho 159))*(1 + (-1)*(rho 159)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow158] using r158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1061 at r1061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1062 at r1062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1063 at r1063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1064 at r1064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1065 at r1065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1066 at r1066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1067 at r1067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1068 at r1068
  have h13_158 : rho 1062 = rvkAccX157 rho + rvkAccY157 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc903 rho
    rw [hLc] at r1061
    linear_combination -r1061
  have h14_158 : (8319606341510190076462738236530222533389508983625641605145362805266453680351*rvkAccX157 rho + 2846529893090264515457185888102121605185335423217303110337743380709220364427*rho 1) * (7070474878759181210512911110590621318148555949608887207137152425514975125766*rvkAccY157 rho + 7070474878759181210512911110590621318148555949608887207137152425514975125766 + 579700466988638287347600972519274716365196157612970975144727948166074860172*rho 1) = rho 1063 := by
    have hL := rvk_lc904 rho
    have hR := rvk_lc905 rho
    rw [hL, hR] at r1062
    linear_combination r1062
  have h15_158 : 3857408923801136380375899479912705358921136938815319318215105030955105526090*rvkAccX157 rho + 7070474878759181210512911110590621318148555949608887207137152425514975125766*rvkAccY157 rho + 7070474878759181210512911110590621318148555949608887207137152425514975125766 + 5765838525605889992576673282127970822723183116280301562344395543037807186814*rho 1 = rho 1064 := by
    have hLc := rvk_lc906 rho
    rw [hLc] at r1063
    linear_combination r1063
  have h16_158 : rho 1065 * (1 + rho 1063) = rho 1064 := by
    linear_combination r1064
  have h17_158 : 4587052825627234043872925458868841172454762396338744509720128424962303712951*rvkAccX157 rho + 1373986870669189213735913828190925213227343385545176620798081030402434113275*rvkAccY157 rho + 1373986870669189213735913828190925213227343385545176620798081030402434113275 + 2678623223822480431672151656653575708652716218873762265590837912879602052227*rho 1 = rho 1066 := by
    have hLc := rvk_lc907 rho
    rw [hLc] at r1065
    linear_combination r1065
  have h18_158 : rho 1067 * (1 + (-1)*rho 1063) = rho 1066 + 2483422053131947166639985651721780145693793553270142697417024000552671412815*rho 1062 := by
    linear_combination r1066
  have hSelX_158 : (1*rho 159) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX157 rho + rho 1065) = rho 1068 := by
    have hLc := rvk_lc908 rho
    rw [hLc] at r1067
    linear_combination r1067
  have hSelY_158 : (1*rho 159) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY157 rho + rho 1067) = rho 1069 := by
    have hLc := rvk_lc909 rho
    rw [hLc] at r1068
    linear_combination r1068
  have hr158 : RvkFixedBaseLadderChoiceFree.FixedStepRel 158 (rho 159) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX157 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY157 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX158 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY158 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX158_succ, rvkAccY158_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 158
      (7070474878759181210512911110590621318148555949608887207137152425514975125766 : EdwardsBridge.F) (3857408923801136380375899479912705358921136938815319318215105030955105526090 : EdwardsBridge.F) (2483422053131947166639985651721780145693793553270142697417024000552671412815 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (8319606341510190076462738236530222533389508983625641605145362805266453680351 : EdwardsBridge.F) (2846529893090264515457185888102121605185335423217303110337743380709220364427 : EdwardsBridge.F)
      (579700466988638287347600972519274716365196157612970975144727948166074860172 : EdwardsBridge.F) (5765838525605889992576673282127970822723183116280301562344395543037807186814 : EdwardsBridge.F) (4587052825627234043872925458868841172454762396338744509720128424962303712951 : EdwardsBridge.F)
      (1373986870669189213735913828190925213227343385545176620798081030402434113275 : EdwardsBridge.F) (2678623223822480431672151656653575708652716218873762265590837912879602052227 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX157 rho : F)
      (rvkAccY157 rho : F) (rho 159 : F)
      (rho 1062 : F) (rho 1063 : F) (rho 1064 : F)
      (rho 1066 : F) (rho 1065 : F) (rho 1067 : F)
      (rho 1068 : F) (rho 1069 : F) hacc
      (by rw [C_eq_L158]; simp only [L158])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_158 h14_158 h15_158 h16_158 h17_158 h18_158 hSelX_158 hSelY_158 hbrow158
  exact hr158

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

