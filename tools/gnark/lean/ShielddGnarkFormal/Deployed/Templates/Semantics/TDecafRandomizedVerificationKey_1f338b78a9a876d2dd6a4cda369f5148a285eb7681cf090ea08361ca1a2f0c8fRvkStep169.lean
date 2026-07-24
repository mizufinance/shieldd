import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas19
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

theorem rvk_step169 (rho : Nat -> F)
    (r169 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow169 rho)
    (r1149 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1149 rho)
    (r1150 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1150 rho)
    (r1151 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1151 rho)
    (r1152 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1152 rho)
    (r1153 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1153 rho)
    (r1154 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1154 rho)
    (r1155 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1155 rho)
    (r1156 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1156 rho)
    (hacc : onCurve (rvkRvkAcc rho 169)) :
    RvkFixedBaseLadder.FixedStepRel 169 (rho 170)
      (rvkRvkAcc rho 169) (rvkRvkAcc rho (169 + 1)) := by
  have hbrow169 : (1*(rho 170))*(1 + (-1)*(rho 170)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow169] using r169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1149 at r1149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1150 at r1150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1151 at r1151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1152 at r1152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1153 at r1153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1154 at r1154
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1155 at r1155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1156 at r1156
  have h13_169 : rho 1150 = rvkAccX168 rho + rvkAccY168 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc980 rho
    rw [hLc] at r1149
    linear_combination -r1149
  have h14_169 : (3079428186128887043815766017692616008552626917905870514239003519962054930266*rvkAccX168 rho + 5383720468184807092291963347632845782642052995723698537415820359568380097010*rho 1) * (4343832408249489744122585062222725371648899081840424406896304284394664692835*rvkAccY168 rho + 4343832408249489744122585062222725371648899081840424406896304284394664692835 + 5421737722239204502091077952412294614057517802052564626391969235122743688019*rho 1) = rho 1151 := by
    have hL := rvk_lc981 rho
    have hR := rvk_lc982 rho
    rw [hL, hR] at r1150
    linear_combination r1150
  have h15_169 : 3008712436468406310339474147681773149211857104119059433754568090727273881542*rvkAccX168 rho + 4343832408249489744122585062222725371648899081840424406896304284394664692835*rvkAccY168 rho + 4343832408249489744122585062222725371648899081840424406896304284394664692835 + 7472440861199542247230661084975851864398853871454634300146998014847016893022*rho 1 = rho 1152 := by
    have hLc := rvk_lc983 rho
    rw [hLc] at r1151
    linear_combination r1151
  have h16_169 : rho 1153 * (1 + rho 1151) = rho 1152 := by
    linear_combination r1152
  have h17_169 : 5435749312959964113909350791099773382164042231035004394180665365190135357499*rvkAccX168 rho + 4100629341178880680126239876558821159727000253313639421038929171522744546206*rvkAccY168 rho + 4100629341178880680126239876558821159727000253313639421038929171522744546206 + 972020888228828177018163853805694666977045463699429527788235441070392346019*rho 1 = rho 1154 := by
    have hLc := rvk_lc984 rho
    rw [hLc] at r1153
    linear_combination r1153
  have h18_169 : rho 1155 * (1 + (-1)*rho 1151) = rho 1154 + 7352544844717896054462059209904498520860756185959483840650872375121938574377*rho 1150 := by
    linear_combination r1154
  have hSelX_169 : (1*rho 170) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX168 rho + rho 1153) = rho 1156 := by
    have hLc := rvk_lc985 rho
    rw [hLc] at r1155
    linear_combination r1155
  have hSelY_169 : (1*rho 170) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY168 rho + rho 1155) = rho 1157 := by
    have hLc := rvk_lc986 rho
    rw [hLc] at r1156
    linear_combination r1156
  have hr169 : RvkFixedBaseLadder.FixedStepRel 169 (rho 170) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX168 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY168 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX169 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY169 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX169_succ, rvkAccY169_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 169
      (4343832408249489744122585062222725371648899081840424406896304284394664692835 : EdwardsBridge.F) (3008712436468406310339474147681773149211857104119059433754568090727273881542 : EdwardsBridge.F) (7352544844717896054462059209904498520860756185959483840650872375121938574377 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3079428186128887043815766017692616008552626917905870514239003519962054930266 : EdwardsBridge.F) (5383720468184807092291963347632845782642052995723698537415820359568380097010 : EdwardsBridge.F)
      (5421737722239204502091077952412294614057517802052564626391969235122743688019 : EdwardsBridge.F) (7472440861199542247230661084975851864398853871454634300146998014847016893022 : EdwardsBridge.F) (5435749312959964113909350791099773382164042231035004394180665365190135357499 : EdwardsBridge.F)
      (4100629341178880680126239876558821159727000253313639421038929171522744546206 : EdwardsBridge.F) (972020888228828177018163853805694666977045463699429527788235441070392346019 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX168 rho : F)
      (rvkAccY168 rho : F) (rho 170 : F)
      (rho 1150 : F) (rho 1151 : F) (rho 1152 : F)
      (rho 1154 : F) (rho 1153 : F) (rho 1155 : F)
      (rho 1156 : F) (rho 1157 : F) hacc
      (by rw [C_eq_L169]; simp only [L169])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_169 h14_169 h15_169 h16_169 h17_169 h18_169 hSelX_169 hSelY_169 hbrow169
  exact hr169

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

