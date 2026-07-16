import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas96
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

theorem rvk_step246 (rho : Nat -> F)
    (r246 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow246 rho)
    (r1765 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1765 rho)
    (r1766 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1766 rho)
    (r1767 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1767 rho)
    (r1768 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1768 rho)
    (r1769 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1769 rho)
    (r1770 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1770 rho)
    (r1771 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1771 rho)
    (r1772 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1772 rho)
    (hacc : onCurve (rvkRvkAcc rho 246)) :
    RvkFixedBaseLadder.FixedStepRel 246 (rho 247)
      (rvkRvkAcc rho 246) (rvkRvkAcc rho (246 + 1)) := by
  have hbrow246 : (1*(rho 247))*(1 + (-1)*(rho 247)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow246] using r246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1765 at r1765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1766 at r1766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1767 at r1767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1768 at r1768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1769 at r1769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1770 at r1770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1771 at r1771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1772 at r1772
  have h13_246 : rho 1766 = rvkAccX245 rho + rvkAccY245 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1519 rho
    rw [hLc] at r1765
    linear_combination -r1765
  have h14_246 : (2402040019472498774072941026249248018522448093911505580831537318715564696295*rvkAccX245 rho + 8236537065884324882781831579993557186896034708215621005562235095096824994222*rho 1) * (480450082750963304168017552783809360075956388215352509798867393431937691687*rvkAccY245 rho + 480450082750963304168017552783809360075956388215352509798867393431937691687 + 7349929413156500839574466363920844519270761866542770606800341658173170220065*rho 1) = rho 1767 := by
    have hL := rvk_lc1520 rho
    have hR := rvk_lc1521 rho
    rw [hL, hR] at r1766
    linear_combination r1766
  have h15_246 : 8411713817957444258635811711956280291601656255403008793061221120878583238984*rvkAccX245 rho + 480450082750963304168017552783809360075956388215352509798867393431937691687*rvkAccY245 rho + 480450082750963304168017552783809360075956388215352509798867393431937691687 + 7358246348133243992746025278670118484927712489971609980736598759135411743889*rho 1 = rho 1768 := by
    have hLc := rvk_lc1522 rho
    rw [hLc] at r1767
    linear_combination r1767
  have h16_246 : rho 1769 * (1 + rho 1767) = rho 1768 := by
    linear_combination r1768
  have h17_246 : 32747931470926165613013226825266239774243079751055034874012335038826000057*rvkAccX245 rho + 7964011666677407120080807385997737171299942946938711318136366062485471547354*rvkAccY245 rho + 7964011666677407120080807385997737171299942946938711318136366062485471547354 + 1086215401295126431502799660111428046448186845182453847198634696781997495152*rho 1 = rho 1770 := by
    have hLc := rvk_lc1523 rho
    rw [hLc] at r1769
    linear_combination r1769
  have h18_246 : rho 1771 * (1 + (-1)*rho 1767) = rho 1770 + 447702151280037138555004325958543120301713308464297474924855058393111691630*rho 1766 := by
    linear_combination r1770
  have hSelX_246 : (1*rho 247) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX245 rho + rho 1769) = rho 1772 := by
    have hLc := rvk_lc1524 rho
    rw [hLc] at r1771
    linear_combination r1771
  have hSelY_246 : (1*rho 247) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY245 rho + rho 1771) = rho 1773 := by
    have hLc := rvk_lc1525 rho
    rw [hLc] at r1772
    linear_combination r1772
  have hr246 : RvkFixedBaseLadder.FixedStepRel 246 (rho 247) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX245 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY245 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX246 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY246 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX246_succ, rvkAccY246_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 246
      (480450082750963304168017552783809360075956388215352509798867393431937691687 : EdwardsBridge.F) (8411713817957444258635811711956280291601656255403008793061221120878583238984 : EdwardsBridge.F) (447702151280037138555004325958543120301713308464297474924855058393111691630 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (2402040019472498774072941026249248018522448093911505580831537318715564696295 : EdwardsBridge.F) (8236537065884324882781831579993557186896034708215621005562235095096824994222 : EdwardsBridge.F)
      (7349929413156500839574466363920844519270761866542770606800341658173170220065 : EdwardsBridge.F) (7358246348133243992746025278670118484927712489971609980736598759135411743889 : EdwardsBridge.F) (32747931470926165613013226825266239774243079751055034874012335038826000057 : EdwardsBridge.F)
      (7964011666677407120080807385997737171299942946938711318136366062485471547354 : EdwardsBridge.F) (1086215401295126431502799660111428046448186845182453847198634696781997495152 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX245 rho : F)
      (rvkAccY245 rho : F) (rho 247 : F)
      (rho 1766 : F) (rho 1767 : F) (rho 1768 : F)
      (rho 1770 : F) (rho 1769 : F) (rho 1771 : F)
      (rho 1772 : F) (rho 1773 : F) hacc
      (by rw [C_eq_L246]; simp only [L246])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_246 h14_246 h15_246 h16_246 h17_246 h18_246 hSelX_246 hSelY_246 hbrow246
  exact hr246

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

