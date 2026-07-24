import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas75
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

theorem rvk_step225 (rho : Nat -> F)
    (r225 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow225 rho)
    (r1597 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1597 rho)
    (r1598 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1598 rho)
    (r1599 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1599 rho)
    (r1600 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1600 rho)
    (r1601 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1601 rho)
    (r1602 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1602 rho)
    (r1603 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1603 rho)
    (r1604 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1604 rho)
    (hacc : onCurve (rvkRvkAcc rho 225)) :
    RvkFixedBaseLadder.FixedStepRel 225 (rho 226)
      (rvkRvkAcc rho 225) (rvkRvkAcc rho (225 + 1)) := by
  have hbrow225 : (1*(rho 226))*(1 + (-1)*(rho 226)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow225] using r225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1597 at r1597
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1598 at r1598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1599 at r1599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1600 at r1600
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1601 at r1601
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1602 at r1602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1603 at r1603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1604 at r1604
  have h13_225 : rho 1598 = rvkAccX224 rho + rvkAccY224 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1372 rho
    rw [hLc] at r1597
    linear_combination -r1597
  have h14_225 : (4646807500992826888153210383261166334613760351744050686719083718939098348084*rvkAccX224 rho + 5655851257221613673432360408661590662640487308967499114876056615059719009869*rho 1) * (1622593000433510709761396177601639448844449538627720169095349271552626081854*rvkAccY224 rho + 1622593000433510709761396177601639448844449538627720169095349271552626081854 + 2996902736460755794649865793395753181717427225185005573185734567768188894816*rho 1) = rho 1599 := by
    have hL := rvk_lc1373 rho
    have hR := rvk_lc1374 rho
    rw [hL, hR] at r1598
    linear_combination r1598
  have h15_225 : 2953326188314250908604737618582116618162053445307658210190773125841682639780*rvkAccX224 rho + 1622593000433510709761396177601639448844449538627720169095349271552626081854*rvkAccY224 rho + 1622593000433510709761396177601639448844449538627720169095349271552626081854 + 5061672224158656816420493123825889868515856287301081906893473179844358288203*rho 1 = rho 1600 := by
    have hLc := rvk_lc1375 rho
    rw [hLc] at r1599
    linear_combination r1599
  have h16_225 : rho 1601 * (1 + rho 1599) = rho 1600 := by
    linear_combination r1600
  have h17_225 : 5491135561114119515644087320199429913213845889846405617744460330075726599261*rvkAccX224 rho + 6821868748994859714487428761179907082531449796526343658839884184364783157187*rvkAccY224 rho + 6821868748994859714487428761179907082531449796526343658839884184364783157187 + 3382789525269713607828331814955656662860043047852981921041760276073050950838*rho 1 = rho 1602 := by
    have hLc := rvk_lc1376 rho
    rw [hLc] at r1601
    linear_combination r1601
  have h18_225 : rho 1603 * (1 + (-1)*rho 1599) = rho 1602 + 4575919188747761618366133796183756067006502983935378379286122397394308721634*rho 1598 := by
    linear_combination r1602
  have hSelX_225 : (1*rho 226) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX224 rho + rho 1601) = rho 1604 := by
    have hLc := rvk_lc1377 rho
    rw [hLc] at r1603
    linear_combination r1603
  have hSelY_225 : (1*rho 226) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY224 rho + rho 1603) = rho 1605 := by
    have hLc := rvk_lc1378 rho
    rw [hLc] at r1604
    linear_combination r1604
  have hr225 : RvkFixedBaseLadder.FixedStepRel 225 (rho 226) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX224 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY224 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX225 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY225 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX225_succ, rvkAccY225_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 225
      (1622593000433510709761396177601639448844449538627720169095349271552626081854 : EdwardsBridge.F) (2953326188314250908604737618582116618162053445307658210190773125841682639780 : EdwardsBridge.F) (4575919188747761618366133796183756067006502983935378379286122397394308721634 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4646807500992826888153210383261166334613760351744050686719083718939098348084 : EdwardsBridge.F) (5655851257221613673432360408661590662640487308967499114876056615059719009869 : EdwardsBridge.F)
      (2996902736460755794649865793395753181717427225185005573185734567768188894816 : EdwardsBridge.F) (5061672224158656816420493123825889868515856287301081906893473179844358288203 : EdwardsBridge.F) (5491135561114119515644087320199429913213845889846405617744460330075726599261 : EdwardsBridge.F)
      (6821868748994859714487428761179907082531449796526343658839884184364783157187 : EdwardsBridge.F) (3382789525269713607828331814955656662860043047852981921041760276073050950838 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX224 rho : F)
      (rvkAccY224 rho : F) (rho 226 : F)
      (rho 1598 : F) (rho 1599 : F) (rho 1600 : F)
      (rho 1602 : F) (rho 1601 : F) (rho 1603 : F)
      (rho 1604 : F) (rho 1605 : F) hacc
      (by rw [C_eq_L225]; simp only [L225])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_225 h14_225 h15_225 h16_225 h17_225 h18_225 hSelX_225 hSelY_225 hbrow225
  exact hr225

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

