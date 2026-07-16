import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas80
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

theorem rvk_step230 (rho : Nat -> F)
    (r230 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow230 rho)
    (r1637 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1637 rho)
    (r1638 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1638 rho)
    (r1639 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1639 rho)
    (r1640 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1640 rho)
    (r1641 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1641 rho)
    (r1642 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1642 rho)
    (r1643 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1643 rho)
    (r1644 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1644 rho)
    (hacc : onCurve (rvkRvkAcc rho 230)) :
    RvkFixedBaseLadder.FixedStepRel 230 (rho 231)
      (rvkRvkAcc rho 230) (rvkRvkAcc rho (230 + 1)) := by
  have hbrow230 : (1*(rho 231))*(1 + (-1)*(rho 231)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow230] using r230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1637 at r1637
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1638 at r1638
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1639 at r1639
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1640 at r1640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1641 at r1641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1642 at r1642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1643 at r1643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1644 at r1644
  have h13_230 : rho 1638 = rvkAccX229 rho + rvkAccY229 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1407 rho
    rw [hLc] at r1637
    linear_combination -r1637
  have h14_230 : (2328924494234622400026043661438891056472383178633768616512250314770556337886*rvkAccX229 rho + 3563738449595643250020585309828661675699916643359296520663432255509695000065*rho 1) * (172846403538610214843532136165434598897879428915183913667080104299606263159*rvkAccY229 rho + 172846403538610214843532136165434598897879428915183913667080104299606263159 + 4156547185992650513569278671728196236611014928975770533777923429996966767923*rho 1) = rho 1639 := by
    have hL := rvk_lc1408 rho
    have hR := rvk_lc1409 rho
    rw [hL, hR] at r1638
    linear_combination r1638
  have h15_230 : 3788339819586122657152328313707525468742408468160341031270689699795716675021*rvkAccX229 rho + 172846403538610214843532136165434598897879428915183913667080104299606263159*rvkAccY229 rho + 172846403538610214843532136165434598897879428915183913667080104299606263159 + 1451921156533177846431628239609457944424265296474686624833652475653192372560*rho 1 = rho 1640 := by
    have hLc := rvk_lc1410 rho
    rw [hLc] at r1639
    linear_combination r1639
  have h16_230 : rho 1641 * (1 + rho 1639) = rho 1640 := by
    linear_combination r1640
  have h17_230 : 4656121929842247767096496625074021062633490866993722796664543756121692564020*rvkAccX229 rho + 8271615345889760209405292802616111932478019906238879914268153351617802975882*rvkAccY229 rho + 8271615345889760209405292802616111932478019906238879914268153351617802975882 + 6992540592895192577817196699172088586951634038679377203101580980264216866481*rho 1 = rho 1642 := by
    have hLc := rvk_lc1411 rho
    rw [hLc] at r1641
    linear_combination r1641
  have h18_230 : rho 1643 * (1 + (-1)*rho 1639) = rho 1642 + 3961186223124732871995860449872960067640287897075524944937769804095322938180*rho 1638 := by
    linear_combination r1642
  have hSelX_230 : (1*rho 231) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX229 rho + rho 1641) = rho 1644 := by
    have hLc := rvk_lc1412 rho
    rw [hLc] at r1643
    linear_combination r1643
  have hSelY_230 : (1*rho 231) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY229 rho + rho 1643) = rho 1645 := by
    have hLc := rvk_lc1413 rho
    rw [hLc] at r1644
    linear_combination r1644
  have hr230 : RvkFixedBaseLadder.FixedStepRel 230 (rho 231) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX229 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY229 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX230 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY230 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX230_succ, rvkAccY230_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 230
      (172846403538610214843532136165434598897879428915183913667080104299606263159 : EdwardsBridge.F) (3788339819586122657152328313707525468742408468160341031270689699795716675021 : EdwardsBridge.F) (3961186223124732871995860449872960067640287897075524944937769804095322938180 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (2328924494234622400026043661438891056472383178633768616512250314770556337886 : EdwardsBridge.F) (3563738449595643250020585309828661675699916643359296520663432255509695000065 : EdwardsBridge.F)
      (4156547185992650513569278671728196236611014928975770533777923429996966767923 : EdwardsBridge.F) (1451921156533177846431628239609457944424265296474686624833652475653192372560 : EdwardsBridge.F) (4656121929842247767096496625074021062633490866993722796664543756121692564020 : EdwardsBridge.F)
      (8271615345889760209405292802616111932478019906238879914268153351617802975882 : EdwardsBridge.F) (6992540592895192577817196699172088586951634038679377203101580980264216866481 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX229 rho : F)
      (rvkAccY229 rho : F) (rho 231 : F)
      (rho 1638 : F) (rho 1639 : F) (rho 1640 : F)
      (rho 1642 : F) (rho 1641 : F) (rho 1643 : F)
      (rho 1644 : F) (rho 1645 : F) hacc
      (by rw [C_eq_L230]; simp only [L230])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_230 h14_230 h15_230 h16_230 h17_230 h18_230 hSelX_230 hSelY_230 hbrow230
  exact hr230

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

