import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas74
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

theorem rvk_step224 (rho : Nat -> F)
    (r224 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow224 rho)
    (r1589 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1589 rho)
    (r1590 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1590 rho)
    (r1591 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1591 rho)
    (r1592 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1592 rho)
    (r1593 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1593 rho)
    (r1594 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1594 rho)
    (r1595 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1595 rho)
    (r1596 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1596 rho)
    (hacc : onCurve (rvkRvkAcc rho 224)) :
    RvkFixedBaseLadder.FixedStepRel 224 (rho 225)
      (rvkRvkAcc rho 224) (rvkRvkAcc rho (224 + 1)) := by
  have hbrow224 : (1*(rho 225))*(1 + (-1)*(rho 225)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow224] using r224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1589 at r1589
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1590 at r1590
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1591 at r1591
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1592 at r1592
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1593 at r1593
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1594 at r1594
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1595 at r1595
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1596 at r1596
  have h13_224 : rho 1590 = rvkAccX223 rho + rvkAccY223 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1365 rho
    rw [hLc] at r1589
    linear_combination -r1589
  have h14_224 : (8430879408160093330160722625733046182942582392288172093642470246427173150924*rvkAccX223 rho + 137488558884457205232673999167580192163634451127116374232054679488272803951*rho 1) * (5488990425375250677312158644956143720864801916199029913146988551927765366148*rvkAccY223 rho + 5488990425375250677312158644956143720864801916199029913146988551927765366148 + 4696590780626708679326410096169400110649612865425230674289355738983321282676*rho 1) = rho 1591 := by
    have hL := rvk_lc1366 rho
    have hR := rvk_lc1367 rho
    rw [hL, hR] at r1590
    linear_combination r1590
  have h15_224 : 2378756493353947353174995670503160409749240985525734003918765609988819935894*rvkAccX223 rho + 5488990425375250677312158644956143720864801916199029913146988551927765366148*rvkAccY223 rho + 5488990425375250677312158644956143720864801916199029913146988551927765366148 + 875524338087914269282414393648643232728828106502861215033072362763655557100*rho 1 = rho 1592 := by
    have hLc := rvk_lc1368 rho
    rw [hLc] at r1591
    linear_combination r1591
  have h16_224 : rho 1593 * (1 + rho 1591) = rho 1592 := by
    linear_combination r1592
  have h17_224 : 6065705256074423071073829268278386121626658349628329824016467845928589303147*rvkAccX223 rho + 2955471324053119746936666293825402810511097418955033914788244903989643872893*rvkAccY223 rho + 2955471324053119746936666293825402810511097418955033914788244903989643872893 + 7568937411340456154966410545132903298647071228651202612902161093153753681941*rho 1 = rho 1594 := by
    have hLc := rvk_lc1369 rho
    rw [hLc] at r1593
    linear_combination r1593
  have h18_224 : rho 1595 * (1 + (-1)*rho 1591) = rho 1594 + 7867746918729198030487154315459304130614042901724763917065754161916585302042*rho 1590 := by
    linear_combination r1594
  have hSelX_224 : (1*rho 225) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX223 rho + rho 1593) = rho 1596 := by
    have hLc := rvk_lc1370 rho
    rw [hLc] at r1595
    linear_combination r1595
  have hSelY_224 : (1*rho 225) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY223 rho + rho 1595) = rho 1597 := by
    have hLc := rvk_lc1371 rho
    rw [hLc] at r1596
    linear_combination r1596
  have hr224 : RvkFixedBaseLadder.FixedStepRel 224 (rho 225) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX223 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY223 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX224 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY224 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX224_succ, rvkAccY224_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 224
      (5488990425375250677312158644956143720864801916199029913146988551927765366148 : EdwardsBridge.F) (2378756493353947353174995670503160409749240985525734003918765609988819935894 : EdwardsBridge.F) (7867746918729198030487154315459304130614042901724763917065754161916585302042 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (8430879408160093330160722625733046182942582392288172093642470246427173150924 : EdwardsBridge.F) (137488558884457205232673999167580192163634451127116374232054679488272803951 : EdwardsBridge.F)
      (4696590780626708679326410096169400110649612865425230674289355738983321282676 : EdwardsBridge.F) (875524338087914269282414393648643232728828106502861215033072362763655557100 : EdwardsBridge.F) (6065705256074423071073829268278386121626658349628329824016467845928589303147 : EdwardsBridge.F)
      (2955471324053119746936666293825402810511097418955033914788244903989643872893 : EdwardsBridge.F) (7568937411340456154966410545132903298647071228651202612902161093153753681941 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX223 rho : F)
      (rvkAccY223 rho : F) (rho 225 : F)
      (rho 1590 : F) (rho 1591 : F) (rho 1592 : F)
      (rho 1594 : F) (rho 1593 : F) (rho 1595 : F)
      (rho 1596 : F) (rho 1597 : F) hacc
      (by rw [C_eq_L224]; simp only [L224])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_224 h14_224 h15_224 h16_224 h17_224 h18_224 hSelX_224 hSelY_224 hbrow224
  exact hr224

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

