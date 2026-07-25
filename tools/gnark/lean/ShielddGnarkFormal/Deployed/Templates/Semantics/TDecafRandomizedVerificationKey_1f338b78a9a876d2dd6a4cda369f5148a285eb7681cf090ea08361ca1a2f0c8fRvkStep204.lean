import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas54
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

theorem rvk_step204 (rho : Nat -> F)
    (r204 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow204 rho)
    (r1429 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1429 rho)
    (r1430 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1430 rho)
    (r1431 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1431 rho)
    (r1432 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1432 rho)
    (r1433 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1433 rho)
    (r1434 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1434 rho)
    (r1435 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1435 rho)
    (r1436 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1436 rho)
    (hacc : onCurve (rvkRvkAcc rho 204)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 204 (rho 205)
      (rvkRvkAcc rho 204) (rvkRvkAcc rho (204 + 1)) := by
  have hbrow204 : (1*(rho 205))*(1 + (-1)*(rho 205)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow204] using r204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1429 at r1429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1430 at r1430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1431 at r1431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1432 at r1432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1433 at r1433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1434 at r1434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1435 at r1435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1436 at r1436
  have h13_204 : rho 1430 = rvkAccX203 rho + rvkAccY203 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1225 rho
    rw [hLc] at r1429
    linear_combination -r1429
  have h14_204 : (3389998491020503859303786965765139969901366052336265727484603991236154999635*rvkAccX203 rho + 6109079922443606354159973101022193335128966803025889958934578981713123816444*rho 1) * (2680918677687748119548860364292426829542892392781941149131102811746148175546*rvkAccY203 rho + 2680918677687748119548860364292426829542892392781941149131102811746148175546 + 8352604590135444293091570219185407877769926257403231614289972806558950954850*rho 1) = rho 1431 := by
    have hL := rvk_lc1226 rho
    have hR := rvk_lc1227 rho
    rw [hL, hR] at r1430
    linear_combination r1430
  have h15_204 : 8090586660488819765519828917510612645406075485596887449113555188817020355109*rvkAccX203 rho + 2680918677687748119548860364292426829542892392781941149131102811746148175546*rvkAccY203 rho + 2680918677687748119548860364292426829542892392781941149131102811746148175546 + 4019188140800469476257486304273406395866950123003719165707181508595962339843*rho 1 = rho 1432 := by
    have hLc := rvk_lc1228 rho
    rw [hLc] at r1431
    linear_combination r1431
  have h16_204 : rho 1433 * (1 + rho 1431) = rho 1432 := by
    linear_combination r1432
  have h17_204 : 353875088939550658728996021270933885969823849557176378821678267100388883932*rvkAccX203 rho + 5763543071740622304699964574489119701833006942372122678804130644171261063495*rvkAccY203 rho + 5763543071740622304699964574489119701833006942372122678804130644171261063495 + 4425273608627900947991338634508140135508949212150344662228051947321446899198*rho 1 = rho 1434 := by
    have hLc := rvk_lc1229 rho
    rw [hLc] at r1433
    linear_combination r1433
  have h18_204 : rho 1435 * (1 + (-1)*rho 1431) = rho 1434 + 2327043588748197460819864343021492943573068543224764770309424544645759291614*rho 1430 := by
    linear_combination r1434
  have hSelX_204 : (1*rho 205) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX203 rho + rho 1433) = rho 1436 := by
    have hLc := rvk_lc1230 rho
    rw [hLc] at r1435
    linear_combination r1435
  have hSelY_204 : (1*rho 205) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY203 rho + rho 1435) = rho 1437 := by
    have hLc := rvk_lc1231 rho
    rw [hLc] at r1436
    linear_combination r1436
  have hr204 : RvkFixedBaseLadderChoiceFree.FixedStepRel 204 (rho 205) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX203 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY203 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX204 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY204 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX204_succ, rvkAccY204_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 204
      (2680918677687748119548860364292426829542892392781941149131102811746148175546 : EdwardsBridge.F) (8090586660488819765519828917510612645406075485596887449113555188817020355109 : EdwardsBridge.F) (2327043588748197460819864343021492943573068543224764770309424544645759291614 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3389998491020503859303786965765139969901366052336265727484603991236154999635 : EdwardsBridge.F) (6109079922443606354159973101022193335128966803025889958934578981713123816444 : EdwardsBridge.F)
      (8352604590135444293091570219185407877769926257403231614289972806558950954850 : EdwardsBridge.F) (4019188140800469476257486304273406395866950123003719165707181508595962339843 : EdwardsBridge.F) (353875088939550658728996021270933885969823849557176378821678267100388883932 : EdwardsBridge.F)
      (5763543071740622304699964574489119701833006942372122678804130644171261063495 : EdwardsBridge.F) (4425273608627900947991338634508140135508949212150344662228051947321446899198 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX203 rho : F)
      (rvkAccY203 rho : F) (rho 205 : F)
      (rho 1430 : F) (rho 1431 : F) (rho 1432 : F)
      (rho 1434 : F) (rho 1433 : F) (rho 1435 : F)
      (rho 1436 : F) (rho 1437 : F) hacc
      (by rw [C_eq_L204]; simp only [L204])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_204 h14_204 h15_204 h16_204 h17_204 h18_204 hSelX_204 hSelY_204 hbrow204
  exact hr204

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

