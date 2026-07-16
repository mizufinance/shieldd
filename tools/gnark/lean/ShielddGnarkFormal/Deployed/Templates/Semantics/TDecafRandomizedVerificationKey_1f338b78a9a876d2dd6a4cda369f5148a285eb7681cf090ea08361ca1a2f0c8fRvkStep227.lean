import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas77
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

theorem rvk_step227 (rho : Nat -> F)
    (r227 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow227 rho)
    (r1613 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1613 rho)
    (r1614 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1614 rho)
    (r1615 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1615 rho)
    (r1616 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1616 rho)
    (r1617 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1617 rho)
    (r1618 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1618 rho)
    (r1619 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1619 rho)
    (r1620 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1620 rho)
    (hacc : onCurve (rvkRvkAcc rho 227)) :
    RvkFixedBaseLadder.FixedStepRel 227 (rho 228)
      (rvkRvkAcc rho 227) (rvkRvkAcc rho (227 + 1)) := by
  have hbrow227 : (1*(rho 228))*(1 + (-1)*(rho 228)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow227] using r227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1613 at r1613
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1614 at r1614
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1615 at r1615
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1616 at r1616
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1617 at r1617
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1618 at r1618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1619 at r1619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1620 at r1620
  have h13_227 : rho 1614 = rvkAccX226 rho + rvkAccY226 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1386 rho
    rw [hLc] at r1613
    linear_combination -r1613
  have h14_227 : (6835153613359202620753536692428562756593607850803641642315853655957739349557*rvkAccX226 rho + 2017182082067414761062071606460734901159165964626278109605283782069263953972*rho 1) * (4124457764415245496255913558276081521933417185473503110705956689248568844076*rvkAccY226 rho + 4124457764415245496255913558276081521933417185473503110705956689248568844076 + 702028760441283555932115401866662986118340125936855939554033690217644916028*rho 1) = rho 1615 := by
    have hL := rvk_lc1387 rho
    have hR := rvk_lc1388 rho
    rw [hL, hR] at r1614
    linear_combination r1614
  have h15_227 : 670328206463667571670381561423772983699249767941947996199548708911028979636*rvkAccX226 rho + 4124457764415245496255913558276081521933417185473503110705956689248568844076*rvkAccY226 rho + 4124457764415245496255913558276081521933417185473503110705956689248568844076 + 5759310616382359197185735522973011350951230249491416595907705522570065497749*rho 1 = rho 1616 := by
    have hLc := rvk_lc1389 rho
    rw [hLc] at r1615
    linear_combination r1615
  have h16_227 : rho 1617 * (1 + rho 1615) = rho 1616 := by
    linear_combination r1616
  have h17_227 : 7774133542964702852578443377357773547676649567212115831735684747006380259405*rvkAccX226 rho + 4320003985013124927992911380505465009442482149680560717229276766668840394965*rvkAccY226 rho + 4320003985013124927992911380505465009442482149680560717229276766668840394965 + 2685151133046011227063089415808535180424669085662647232027527933347343741292*rho 1 = rho 1618 := by
    have hLc := rvk_lc1390 rho
    rw [hLc] at r1617
    linear_combination r1617
  have h18_227 : rho 1619 * (1 + (-1)*rho 1615) = rho 1618 + 4794785970878913067926295119699854505632666953415451106905505398159597823712*rho 1614 := by
    linear_combination r1618
  have hSelX_227 : (1*rho 228) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX226 rho + rho 1617) = rho 1620 := by
    have hLc := rvk_lc1391 rho
    rw [hLc] at r1619
    linear_combination r1619
  have hSelY_227 : (1*rho 228) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY226 rho + rho 1619) = rho 1621 := by
    have hLc := rvk_lc1392 rho
    rw [hLc] at r1620
    linear_combination r1620
  have hr227 : RvkFixedBaseLadder.FixedStepRel 227 (rho 228) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX226 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY226 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX227 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY227 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX227_succ, rvkAccY227_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 227
      (4124457764415245496255913558276081521933417185473503110705956689248568844076 : EdwardsBridge.F) (670328206463667571670381561423772983699249767941947996199548708911028979636 : EdwardsBridge.F) (4794785970878913067926295119699854505632666953415451106905505398159597823712 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (6835153613359202620753536692428562756593607850803641642315853655957739349557 : EdwardsBridge.F) (2017182082067414761062071606460734901159165964626278109605283782069263953972 : EdwardsBridge.F)
      (702028760441283555932115401866662986118340125936855939554033690217644916028 : EdwardsBridge.F) (5759310616382359197185735522973011350951230249491416595907705522570065497749 : EdwardsBridge.F) (7774133542964702852578443377357773547676649567212115831735684747006380259405 : EdwardsBridge.F)
      (4320003985013124927992911380505465009442482149680560717229276766668840394965 : EdwardsBridge.F) (2685151133046011227063089415808535180424669085662647232027527933347343741292 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX226 rho : F)
      (rvkAccY226 rho : F) (rho 228 : F)
      (rho 1614 : F) (rho 1615 : F) (rho 1616 : F)
      (rho 1618 : F) (rho 1617 : F) (rho 1619 : F)
      (rho 1620 : F) (rho 1621 : F) hacc
      (by rw [C_eq_L227]; simp only [L227])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_227 h14_227 h15_227 h16_227 h17_227 h18_227 hSelX_227 hSelY_227 hbrow227
  exact hr227

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

