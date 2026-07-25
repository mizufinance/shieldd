import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas94
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

theorem rvk_step244 (rho : Nat -> F)
    (r244 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow244 rho)
    (r1749 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1749 rho)
    (r1750 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1750 rho)
    (r1751 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1751 rho)
    (r1752 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1752 rho)
    (r1753 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1753 rho)
    (r1754 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1754 rho)
    (r1755 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1755 rho)
    (r1756 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1756 rho)
    (hacc : onCurve (rvkRvkAcc rho 244)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 244 (rho 245)
      (rvkRvkAcc rho 244) (rvkRvkAcc rho (244 + 1)) := by
  have hbrow244 : (1*(rho 245))*(1 + (-1)*(rho 245)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow244] using r244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1749 at r1749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1750 at r1750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1751 at r1751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1752 at r1752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1753 at r1753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1754 at r1754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1755 at r1755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1756 at r1756
  have h13_244 : rho 1750 = rvkAccX243 rho + rvkAccY243 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1505 rho
    rw [hLc] at r1749
    linear_combination -r1749
  have h14_244 : (7396124104652663118422969070910039288717996846228245061431233970477546476098*rvkAccX243 rho + 266244481212878045924026887078478029881372060679573020064507805825996892176*rho 1) * (6531902123103138028322820526628973091630042871057622470582109851478141098661*rvkAccY243 rho + 6531902123103138028322820526628973091630042871057622470582109851478141098661 + 5634786646466419842005984955937291077093527399684750966063598167198254324639*rho 1) = rho 1751 := by
    have hL := rvk_lc1506 rho
    have hR := rvk_lc1507 rho
    rw [hL, hR] at r1750
    linear_combination r1750
  have h15_244 : 5039495596350405881368687689094755673230085600395184132075710665850264480380*rvkAccX243 rho + 6531902123103138028322820526628973091630042871057622470582109851478141098661*rvkAccY243 rho + 6531902123103138028322820526628973091630042871057622470582109851478141098661 + 1808172316613316156884926593042600999826488400093478603460728225673889130546*rho 1 = rho 1752 := by
    have hLc := rvk_lc1508 rho
    rw [hLc] at r1751
    linear_combination r1751
  have h16_244 : rho 1753 * (1 + rho 1751) = rho 1752 := by
    linear_combination r1752
  have h17_244 : 3404966153077964542880137249686790858145813734758879695859522790067144758661*rvkAccX243 rho + 1912559626325232395926004412152573439745856464096441357353123604439268140380*rvkAccY243 rho + 1912559626325232395926004412152573439745856464096441357353123604439268140380 + 6636289432815054267363898345738945531549410935060585224474505230243520108495*rho 1 = rho 1754 := by
    have hLc := rvk_lc1509 rho
    rw [hLc] at r1753
    linear_combination r1753
  have h18_244 : rho 1755 * (1 + (-1)*rho 1751) = rho 1754 + 3126935970025173485442683276942182233484229136298742774722587061410996340000*rho 1750 := by
    linear_combination r1754
  have hSelX_244 : (1*rho 245) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX243 rho + rho 1753) = rho 1756 := by
    have hLc := rvk_lc1510 rho
    rw [hLc] at r1755
    linear_combination r1755
  have hSelY_244 : (1*rho 245) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY243 rho + rho 1755) = rho 1757 := by
    have hLc := rvk_lc1511 rho
    rw [hLc] at r1756
    linear_combination r1756
  have hr244 : RvkFixedBaseLadderChoiceFree.FixedStepRel 244 (rho 245) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX243 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY243 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX244 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY244 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX244_succ, rvkAccY244_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 244
      (6531902123103138028322820526628973091630042871057622470582109851478141098661 : EdwardsBridge.F) (5039495596350405881368687689094755673230085600395184132075710665850264480380 : EdwardsBridge.F) (3126935970025173485442683276942182233484229136298742774722587061410996340000 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (7396124104652663118422969070910039288717996846228245061431233970477546476098 : EdwardsBridge.F) (266244481212878045924026887078478029881372060679573020064507805825996892176 : EdwardsBridge.F)
      (5634786646466419842005984955937291077093527399684750966063598167198254324639 : EdwardsBridge.F) (1808172316613316156884926593042600999826488400093478603460728225673889130546 : EdwardsBridge.F) (3404966153077964542880137249686790858145813734758879695859522790067144758661 : EdwardsBridge.F)
      (1912559626325232395926004412152573439745856464096441357353123604439268140380 : EdwardsBridge.F) (6636289432815054267363898345738945531549410935060585224474505230243520108495 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX243 rho : F)
      (rvkAccY243 rho : F) (rho 245 : F)
      (rho 1750 : F) (rho 1751 : F) (rho 1752 : F)
      (rho 1754 : F) (rho 1753 : F) (rho 1755 : F)
      (rho 1756 : F) (rho 1757 : F) hacc
      (by rw [C_eq_L244]; simp only [L244])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_244 h14_244 h15_244 h16_244 h17_244 h18_244 hSelX_244 hSelY_244 hbrow244
  exact hr244

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

