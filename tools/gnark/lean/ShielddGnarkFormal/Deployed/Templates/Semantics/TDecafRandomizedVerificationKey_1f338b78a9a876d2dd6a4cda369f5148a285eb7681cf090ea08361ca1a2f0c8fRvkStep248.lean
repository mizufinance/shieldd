import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas98
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

theorem rvk_step248 (rho : Nat -> F)
    (r248 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow248 rho)
    (r1781 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1781 rho)
    (r1782 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1782 rho)
    (r1783 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1783 rho)
    (r1784 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1784 rho)
    (r1785 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1785 rho)
    (r1786 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1786 rho)
    (r1787 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1787 rho)
    (r1788 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1788 rho)
    (hacc : onCurve (rvkRvkAcc rho 248)) :
    RvkFixedBaseLadder.FixedStepRel 248 (rho 249)
      (rvkRvkAcc rho 248) (rvkRvkAcc rho (248 + 1)) := by
  have hbrow248 : (1*(rho 249))*(1 + (-1)*(rho 249)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow248] using r248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1781 at r1781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1782 at r1782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1783 at r1783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1784 at r1784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1785 at r1785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1786 at r1786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1787 at r1787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1788 at r1788
  have h13_248 : rho 1782 = rvkAccX247 rho + rvkAccY247 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1533 rho
    rw [hLc] at r1781
    linear_combination -r1781
  have h14_248 : (5433452400507472894596995115818677673164991880881552604222095953382622985027*rvkAccX247 rho + 6394341953313109814172697215813188191256544307060807307185555637922028065142*rho 1) * (6627260208489595454201940394776925586553558217909297503373304214489441683658*rvkAccY247 rho + 6627260208489595454201940394776925586553558217909297503373304214489441683658 + 549863627905211652879844760723861940109871183668577874297564049356567101830*rho 1) = rho 1783 := by
    have hL := rvk_lc1534 rho
    have hR := rvk_lc1535 rho
    rw [hL, hR] at r1782
    linear_combination r1782
  have h15_248 : 1516826123995592268400350914245421018761636025003106304980178294955517520869*rvkAccX247 rho + 6627260208489595454201940394776925586553558217909297503373304214489441683658*rvkAccY247 rho + 6627260208489595454201940394776925586553558217909297503373304214489441683658 + 1370989624110383994528000472170007693795536542658052057975885452276700479885*rho 1 = rho 1784 := by
    have hLc := rvk_lc1536 rho
    rw [hLc] at r1783
    linear_combination r1783
  have h16_248 : rho 1785 * (1 + rho 1783) = rho 1784 := by
    linear_combination r1784
  have h17_248 : 6927635625432778155848474024536125512614263310150957522955055160961891718172*rvkAccX247 rho + 1817201540938774970046884544004620944822341117244766324561929241427967555383*rvkAccY247 rho + 1817201540938774970046884544004620944822341117244766324561929241427967555383 + 7073472125317986429720824466611538837580362792496011769959348003640708759156*rho 1 = rho 1786 := by
    have hLc := rvk_lc1537 rho
    rw [hLc] at r1785
    linear_combination r1785
  have h18_248 : rho 1787 * (1 + (-1)*rho 1783) = rho 1786 + 8144086332485187722602291309022346605315194242912403808353482509444959204527*rho 1782 := by
    linear_combination r1786
  have hSelX_248 : (1*rho 249) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX247 rho + rho 1785) = rho 1788 := by
    have hLc := rvk_lc1538 rho
    rw [hLc] at r1787
    linear_combination r1787
  have hSelY_248 : (1*rho 249) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY247 rho + rho 1787) = rho 1789 := by
    have hLc := rvk_lc1539 rho
    rw [hLc] at r1788
    linear_combination r1788
  have hr248 : RvkFixedBaseLadder.FixedStepRel 248 (rho 249) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX247 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY247 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX248 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY248 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX248_succ, rvkAccY248_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 248
      (6627260208489595454201940394776925586553558217909297503373304214489441683658 : EdwardsBridge.F) (1516826123995592268400350914245421018761636025003106304980178294955517520869 : EdwardsBridge.F) (8144086332485187722602291309022346605315194242912403808353482509444959204527 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (5433452400507472894596995115818677673164991880881552604222095953382622985027 : EdwardsBridge.F) (6394341953313109814172697215813188191256544307060807307185555637922028065142 : EdwardsBridge.F)
      (549863627905211652879844760723861940109871183668577874297564049356567101830 : EdwardsBridge.F) (1370989624110383994528000472170007693795536542658052057975885452276700479885 : EdwardsBridge.F) (6927635625432778155848474024536125512614263310150957522955055160961891718172 : EdwardsBridge.F)
      (1817201540938774970046884544004620944822341117244766324561929241427967555383 : EdwardsBridge.F) (7073472125317986429720824466611538837580362792496011769959348003640708759156 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX247 rho : F)
      (rvkAccY247 rho : F) (rho 249 : F)
      (rho 1782 : F) (rho 1783 : F) (rho 1784 : F)
      (rho 1786 : F) (rho 1785 : F) (rho 1787 : F)
      (rho 1788 : F) (rho 1789 : F) hacc
      (by rw [C_eq_L248]; simp only [L248])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_248 h14_248 h15_248 h16_248 h17_248 h18_248 hSelX_248 hSelY_248 hbrow248
  exact hr248

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

