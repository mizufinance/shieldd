import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas60
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

theorem rvk_step210 (rho : Nat -> F)
    (r210 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow210 rho)
    (r1477 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1477 rho)
    (r1478 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1478 rho)
    (r1479 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1479 rho)
    (r1480 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1480 rho)
    (r1481 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1481 rho)
    (r1482 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1482 rho)
    (r1483 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1483 rho)
    (r1484 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1484 rho)
    (hacc : onCurve (rvkRvkAcc rho 210)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 210 (rho 211)
      (rvkRvkAcc rho 210) (rvkRvkAcc rho (210 + 1)) := by
  have hbrow210 : (1*(rho 211))*(1 + (-1)*(rho 211)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow210] using r210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1477 at r1477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1478 at r1478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1479 at r1479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1480 at r1480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1481 at r1481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1482 at r1482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1483 at r1483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1484 at r1484
  have h13_210 : rho 1478 = rvkAccX209 rho + rvkAccY209 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1267 rho
    rw [hLc] at r1477
    linear_combination -r1477
  have h14_210 : (6473138200877952229647344942848384561493038639920753725556359415039909781089*rvkAccX209 rho + 1572966202733867531866893324526713710621158187380404321611807179386972464120*rho 1) * (6676673304779201579792702677689318888868515796427600730605787578664193959720*rvkAccY209 rho + 6676673304779201579792702677689318888868515796427600730605787578664193959720 + 7617743523713161405130236323424275117965454145619594398246121523625471376046*rho 1) = rho 1479 := by
    have hL := rvk_lc1268 rho
    have hR := rvk_lc1269 rho
    rw [hL, hR] at r1478
    linear_combination r1478
  have h15_210 : 2928773449140146238470098330303584112185388825735261695323980730804557227096*rvkAccX209 rho + 6676673304779201579792702677689318888868515796427600730605787578664193959720*rvkAccY209 rho + 6676673304779201579792702677689318888868515796427600730605787578664193959720 + 6069693592239946129558577229494963610295269745259458365027151802540116279732*rho 1 = rho 1480 := by
    have hLc := rvk_lc1270 rho
    rw [hLc] at r1479
    linear_combination r1479
  have h16_210 : rho 1481 * (1 + rho 1479) = rho 1480 := by
    linear_combination r1480
  have h17_210 : 5515688300288224185778726608477962419190510509418802132611252725112852011945*rvkAccX209 rho + 1767788444649168844456122261092227642507383538726463097329445877253215279321*rvkAccY209 rho + 1767788444649168844456122261092227642507383538726463097329445877253215279321 + 2374768157188424294690247709286582921080629589894605462908081653377292959309*rho 1 = rho 1482 := by
    have hLc := rvk_lc1271 rho
    rw [hLc] at r1481
    linear_combination r1481
  have h18_210 : rho 1483 * (1 + (-1)*rho 1479) = rho 1482 + 1160985004490977394013976069211356469678005287008798597994534853551341947775*rho 1478 := by
    linear_combination r1482
  have hSelX_210 : (1*rho 211) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX209 rho + rho 1481) = rho 1484 := by
    have hLc := rvk_lc1272 rho
    rw [hLc] at r1483
    linear_combination r1483
  have hSelY_210 : (1*rho 211) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY209 rho + rho 1483) = rho 1485 := by
    have hLc := rvk_lc1273 rho
    rw [hLc] at r1484
    linear_combination r1484
  have hr210 : RvkFixedBaseLadderChoiceFree.FixedStepRel 210 (rho 211) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX209 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY209 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX210 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY210 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX210_succ, rvkAccY210_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 210
      (6676673304779201579792702677689318888868515796427600730605787578664193959720 : EdwardsBridge.F) (2928773449140146238470098330303584112185388825735261695323980730804557227096 : EdwardsBridge.F) (1160985004490977394013976069211356469678005287008798597994534853551341947775 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (6473138200877952229647344942848384561493038639920753725556359415039909781089 : EdwardsBridge.F) (1572966202733867531866893324526713710621158187380404321611807179386972464120 : EdwardsBridge.F)
      (7617743523713161405130236323424275117965454145619594398246121523625471376046 : EdwardsBridge.F) (6069693592239946129558577229494963610295269745259458365027151802540116279732 : EdwardsBridge.F) (5515688300288224185778726608477962419190510509418802132611252725112852011945 : EdwardsBridge.F)
      (1767788444649168844456122261092227642507383538726463097329445877253215279321 : EdwardsBridge.F) (2374768157188424294690247709286582921080629589894605462908081653377292959309 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX209 rho : F)
      (rvkAccY209 rho : F) (rho 211 : F)
      (rho 1478 : F) (rho 1479 : F) (rho 1480 : F)
      (rho 1482 : F) (rho 1481 : F) (rho 1483 : F)
      (rho 1484 : F) (rho 1485 : F) hacc
      (by rw [C_eq_L210]; simp only [L210])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_210 h14_210 h15_210 h16_210 h17_210 h18_210 hSelX_210 hSelY_210 hbrow210
  exact hr210

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

