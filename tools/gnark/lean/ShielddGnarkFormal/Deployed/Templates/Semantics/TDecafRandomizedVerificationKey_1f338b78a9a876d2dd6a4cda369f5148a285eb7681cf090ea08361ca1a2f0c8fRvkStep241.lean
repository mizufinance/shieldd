import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas91
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

theorem rvk_step241 (rho : Nat -> F)
    (r241 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow241 rho)
    (r1725 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1725 rho)
    (r1726 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1726 rho)
    (r1727 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1727 rho)
    (r1728 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1728 rho)
    (r1729 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1729 rho)
    (r1730 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1730 rho)
    (r1731 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1731 rho)
    (r1732 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1732 rho)
    (hacc : onCurve (rvkRvkAcc rho 241)) :
    RvkFixedBaseLadder.FixedStepRel 241 (rho 242)
      (rvkRvkAcc rho 241) (rvkRvkAcc rho (241 + 1)) := by
  have hbrow241 : (1*(rho 242))*(1 + (-1)*(rho 242)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow241] using r241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1725 at r1725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1726 at r1726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1727 at r1727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1728 at r1728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1729 at r1729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1730 at r1730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1731 at r1731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1732 at r1732
  have h13_241 : rho 1726 = rvkAccX240 rho + rvkAccY240 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1484 rho
    rw [hLc] at r1725
    linear_combination -r1725
  have h14_241 : (1956560981182669050740635602451336507209547751643045548588066977890755308424*rvkAccX240 rho + 5802932167050963573457850833071607981893881027396067795802331758442319830161*rho 1) * (1042167591211212625055700514920501013538786034986540347420891006854780459843*rvkAccY240 rho + 1042167591211212625055700514920501013538786034986540347420891006854780459843 + 5084973934258372237038475226326269953298064121184732937443940636904285701209*rho 1) = rho 1727 := by
    have hL := rvk_lc1485 rho
    have hR := rvk_lc1486 rho
    rw [hL, hR] at r1726
    linear_combination r1726
  have h15_241 : 1429022348539913921165802773690771802065638566042823456346736962248158515875*rvkAccX240 rho + 1042167591211212625055700514920501013538786034986540347420891006854780459843*rvkAccY240 rho + 1042167591211212625055700514920501013538786034986540347420891006854780459843 + 3247617794252805611556095564331835656818935395099338057938617471649332718932*rho 1 = rho 1728 := by
    have hLc := rvk_lc1487 rho
    rw [hLc] at r1727
    linear_combination r1727
  have h16_241 : rho 1729 * (1 + rho 1727) = rho 1728 := by
    linear_combination r1728
  have h17_241 : 7015439400888456503083022165090774729310260769111240371588496493669250723166*rvkAccX240 rho + 7402294158217157799193124423861045517837113300167523480514342449062628779198*rvkAccY240 rho + 7402294158217157799193124423861045517837113300167523480514342449062628779198 + 5196843955175564812692729374449710874556963940054725769996615984268076520109*rho 1 = rho 1730 := by
    have hLc := rvk_lc1488 rho
    rw [hLc] at r1729
    linear_combination r1729
  have h18_241 : rho 1731 * (1 + (-1)*rho 1727) = rho 1730 + 2471189939751126546221503288611272815604424601029363803767627969102938975718*rho 1726 := by
    linear_combination r1730
  have hSelX_241 : (1*rho 242) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX240 rho + rho 1729) = rho 1732 := by
    have hLc := rvk_lc1489 rho
    rw [hLc] at r1731
    linear_combination r1731
  have hSelY_241 : (1*rho 242) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY240 rho + rho 1731) = rho 1733 := by
    have hLc := rvk_lc1490 rho
    rw [hLc] at r1732
    linear_combination r1732
  have hr241 : RvkFixedBaseLadder.FixedStepRel 241 (rho 242) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX240 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY240 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX241 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY241 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX241_succ, rvkAccY241_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 241
      (1042167591211212625055700514920501013538786034986540347420891006854780459843 : EdwardsBridge.F) (1429022348539913921165802773690771802065638566042823456346736962248158515875 : EdwardsBridge.F) (2471189939751126546221503288611272815604424601029363803767627969102938975718 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (1956560981182669050740635602451336507209547751643045548588066977890755308424 : EdwardsBridge.F) (5802932167050963573457850833071607981893881027396067795802331758442319830161 : EdwardsBridge.F)
      (5084973934258372237038475226326269953298064121184732937443940636904285701209 : EdwardsBridge.F) (3247617794252805611556095564331835656818935395099338057938617471649332718932 : EdwardsBridge.F) (7015439400888456503083022165090774729310260769111240371588496493669250723166 : EdwardsBridge.F)
      (7402294158217157799193124423861045517837113300167523480514342449062628779198 : EdwardsBridge.F) (5196843955175564812692729374449710874556963940054725769996615984268076520109 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX240 rho : F)
      (rvkAccY240 rho : F) (rho 242 : F)
      (rho 1726 : F) (rho 1727 : F) (rho 1728 : F)
      (rho 1730 : F) (rho 1729 : F) (rho 1731 : F)
      (rho 1732 : F) (rho 1733 : F) hacc
      (by rw [C_eq_L241]; simp only [L241])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_241 h14_241 h15_241 h16_241 h17_241 h18_241 hSelX_241 hSelY_241 hbrow241
  exact hr241

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

