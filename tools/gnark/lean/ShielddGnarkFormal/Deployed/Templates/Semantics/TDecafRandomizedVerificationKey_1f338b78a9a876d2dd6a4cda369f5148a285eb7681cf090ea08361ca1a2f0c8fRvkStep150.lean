import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas0
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

theorem rvk_step150 (rho : Nat -> F)
    (r150 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow150 rho)
    (r997 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow997 rho)
    (r998 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow998 rho)
    (r999 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow999 rho)
    (r1000 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1000 rho)
    (r1001 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1001 rho)
    (r1002 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1002 rho)
    (r1003 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1003 rho)
    (r1004 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1004 rho)
    (hacc : onCurve (rvkRvkAcc rho 150)) :
    RvkFixedBaseLadder.FixedStepRel 150 (rho 151)
      (rvkRvkAcc rho 150) (rvkRvkAcc rho (150 + 1)) := by
  have hbrow150 : (1*(rho 151))*(1 + (-1)*(rho 151)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow150] using r150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow997 at r997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow998 at r998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow999 at r999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1000 at r1000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1001 at r1001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1002 at r1002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1003 at r1003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1004 at r1004
  have h13_150 : rho 998 = rvkAccX149 rho + rvkAccY149 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc847 rho
    rw [hLc] at r997
    linear_combination -r997
  have h14_150 : (3144982910228748581975719192741403467556637701274845694014003990746557421882*rvkAccX149 rho + 5769188875529050372644141506610052770738299431780184070866704372825525935919*rho 1) * (7995175084980332794894335504846425685460706685990983680008492838779928162389*rvkAccY149 rho + 7995175084980332794894335504846425685460706685990983680008492838779928162389 + 1981879756459152890585408800338738007832827297438533450175392580190602675804*rho 1) = rho 999 := by
    have hL := rvk_lc848 rho
    have hR := rvk_lc849 rho
    rw [hL, hR] at r998
    linear_combination r998
  have h15_150 : 6203709236971791698109936530403506506650340040519080595790234042592346130041*rvkAccX149 rho + 7995175084980332794894335504846425685460706685990983680008492838779928162389*rvkAccY149 rho + 7995175084980332794894335504846425685460706685990983680008492838779928162389 + 2282881608847224617088973318695651457560718567975860498722210416720224759390*rho 1 = rho 1000 := by
    have hLc := rvk_lc850 rho
    rw [hLc] at r999
    linear_combination r999
  have h16_150 : rho 1001 * (1 + rho 999) = rho 1000 := by
    linear_combination r1000
  have h17_150 : 2240752512456578726138888408378040024725559294634983232144999413325063109000*rvkAccX149 rho + 449286664448037629354489433935120845915192649163080147926740617137481076652*rvkAccY149 rho + 449286664448037629354489433935120845915192649163080147926740617137481076652 + 6161580140581145807159851620085895073815180767178203329213023039197184479651*rho 1 = rho 1002 := by
    have hLc := rvk_lc851 rho
    rw [hLc] at r1001
    linear_combination r1001
  have h18_150 : rho 1003 * (1 + (-1)*rho 999) = rho 1002 + 5754422572523754068755447096468385660735147391356000447863493425454865053389*rho 998 := by
    linear_combination r1002
  have hSelX_150 : (1*rho 151) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX149 rho + rho 1001) = rho 1004 := by
    have hLc := rvk_lc852 rho
    rw [hLc] at r1003
    linear_combination r1003
  have hSelY_150 : (1*rho 151) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY149 rho + rho 1003) = rho 1005 := by
    have hLc := rvk_lc853 rho
    rw [hLc] at r1004
    linear_combination r1004
  have hr150 : RvkFixedBaseLadder.FixedStepRel 150 (rho 151) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX149 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY149 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX150 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY150 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX150_succ, rvkAccY150_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 150
      (7995175084980332794894335504846425685460706685990983680008492838779928162389 : EdwardsBridge.F) (6203709236971791698109936530403506506650340040519080595790234042592346130041 : EdwardsBridge.F) (5754422572523754068755447096468385660735147391356000447863493425454865053389 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3144982910228748581975719192741403467556637701274845694014003990746557421882 : EdwardsBridge.F) (5769188875529050372644141506610052770738299431780184070866704372825525935919 : EdwardsBridge.F)
      (1981879756459152890585408800338738007832827297438533450175392580190602675804 : EdwardsBridge.F) (2282881608847224617088973318695651457560718567975860498722210416720224759390 : EdwardsBridge.F) (2240752512456578726138888408378040024725559294634983232144999413325063109000 : EdwardsBridge.F)
      (449286664448037629354489433935120845915192649163080147926740617137481076652 : EdwardsBridge.F) (6161580140581145807159851620085895073815180767178203329213023039197184479651 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX149 rho : F)
      (rvkAccY149 rho : F) (rho 151 : F)
      (rho 998 : F) (rho 999 : F) (rho 1000 : F)
      (rho 1002 : F) (rho 1001 : F) (rho 1003 : F)
      (rho 1004 : F) (rho 1005 : F) hacc
      (by rw [C_eq_L150]; simp only [L150])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_150 h14_150 h15_150 h16_150 h17_150 h18_150 hSelX_150 hSelY_150 hbrow150
  exact hr150

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

