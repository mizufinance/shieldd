import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas50
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

theorem rvk_step200 (rho : Nat -> F)
    (r200 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow200 rho)
    (r1397 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1397 rho)
    (r1398 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1398 rho)
    (r1399 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1399 rho)
    (r1400 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1400 rho)
    (r1401 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1401 rho)
    (r1402 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1402 rho)
    (r1403 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1403 rho)
    (r1404 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1404 rho)
    (hacc : onCurve (rvkRvkAcc rho 200)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 200 (rho 201)
      (rvkRvkAcc rho 200) (rvkRvkAcc rho (200 + 1)) := by
  have hbrow200 : (1*(rho 201))*(1 + (-1)*(rho 201)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow200] using r200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1397 at r1397
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1398 at r1398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1399 at r1399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1400 at r1400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1401 at r1401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1402 at r1402
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1403 at r1403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1404 at r1404
  have h13_200 : rho 1398 = rvkAccX199 rho + rvkAccY199 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1197 rho
    rw [hLc] at r1397
    linear_combination -r1397
  have h14_200 : (3100448320433834111918975386863796058846185529823286084341039373912753248800*rvkAccX199 rho + 3903952192111930461238178835992593518359008067511423121083754618642940815645*rho 1) * (1318318980829517938862932266652645911449606932466552744558540909070597892155*rvkAccY199 rho + 1318318980829517938862932266652645911449606932466552744558540909070597892155 + 5094008693542661590663718289535533802753982210673550470075594113034958991626*rho 1) = rho 1399 := by
    have hL := rvk_lc1198 rho
    have hR := rvk_lc1199 rho
    rw [hL, hR] at r1398
    linear_combination r1398
  have h15_200 : 993341399989243738735601399753165446771694951840289952003094642907842778255*rvkAccX199 rho + 1318318980829517938862932266652645911449606932466552744558540909070597892155*rvkAccY199 rho + 1318318980829517938862932266652645911449606932466552744558540909070597892155 + 5645965964919523856151390150434559708149351683395451164290862151907641070708*rho 1 = rho 1400 := by
    have hLc := rvk_lc1200 rho
    rw [hLc] at r1399
    linear_combination r1399
  have h16_200 : rho 1401 * (1 + rho 1399) = rho 1400 := by
    linear_combination r1400
  have h17_200 : 7451120349439126685513223539028381084604204383313773875932138813009566460786*rvkAccX199 rho + 7126142768598852485385892672128900619926292402687511083376692546846811346886*rvkAccY199 rho + 7126142768598852485385892672128900619926292402687511083376692546846811346886 + 2798495784508846568097434788346986823226547651758612663644371304009768168333*rho 1 = rho 1402 := by
    have hLc := rvk_lc1201 rho
    rw [hLc] at r1401
    linear_combination r1401
  have h18_200 : rho 1403 * (1 + (-1)*rho 1399) = rho 1402 + 2311660380818761677598533666405811358221301884306842696561635551978440670410*rho 1398 := by
    linear_combination r1402
  have hSelX_200 : (1*rho 201) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX199 rho + rho 1401) = rho 1404 := by
    have hLc := rvk_lc1202 rho
    rw [hLc] at r1403
    linear_combination r1403
  have hSelY_200 : (1*rho 201) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY199 rho + rho 1403) = rho 1405 := by
    have hLc := rvk_lc1203 rho
    rw [hLc] at r1404
    linear_combination r1404
  have hr200 : RvkFixedBaseLadderChoiceFree.FixedStepRel 200 (rho 201) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX199 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY199 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX200 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY200 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX200_succ, rvkAccY200_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 200
      (1318318980829517938862932266652645911449606932466552744558540909070597892155 : EdwardsBridge.F) (993341399989243738735601399753165446771694951840289952003094642907842778255 : EdwardsBridge.F) (2311660380818761677598533666405811358221301884306842696561635551978440670410 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3100448320433834111918975386863796058846185529823286084341039373912753248800 : EdwardsBridge.F) (3903952192111930461238178835992593518359008067511423121083754618642940815645 : EdwardsBridge.F)
      (5094008693542661590663718289535533802753982210673550470075594113034958991626 : EdwardsBridge.F) (5645965964919523856151390150434559708149351683395451164290862151907641070708 : EdwardsBridge.F) (7451120349439126685513223539028381084604204383313773875932138813009566460786 : EdwardsBridge.F)
      (7126142768598852485385892672128900619926292402687511083376692546846811346886 : EdwardsBridge.F) (2798495784508846568097434788346986823226547651758612663644371304009768168333 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX199 rho : F)
      (rvkAccY199 rho : F) (rho 201 : F)
      (rho 1398 : F) (rho 1399 : F) (rho 1400 : F)
      (rho 1402 : F) (rho 1401 : F) (rho 1403 : F)
      (rho 1404 : F) (rho 1405 : F) hacc
      (by rw [C_eq_L200]; simp only [L200])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_200 h14_200 h15_200 h16_200 h17_200 h18_200 hSelX_200 hSelY_200 hbrow200
  exact hr200

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

