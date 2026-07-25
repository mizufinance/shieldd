import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas27
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

theorem rvk_step177 (rho : Nat -> F)
    (r177 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow177 rho)
    (r1213 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1213 rho)
    (r1214 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1214 rho)
    (r1215 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1215 rho)
    (r1216 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1216 rho)
    (r1217 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1217 rho)
    (r1218 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1218 rho)
    (r1219 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1219 rho)
    (r1220 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1220 rho)
    (hacc : onCurve (rvkRvkAcc rho 177)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 177 (rho 178)
      (rvkRvkAcc rho 177) (rvkRvkAcc rho (177 + 1)) := by
  have hbrow177 : (1*(rho 178))*(1 + (-1)*(rho 178)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow177] using r177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1213 at r1213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1214 at r1214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1215 at r1215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1216 at r1216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1217 at r1217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1218 at r1218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1219 at r1219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1220 at r1220
  have h13_177 : rho 1214 = rvkAccX176 rho + rvkAccY176 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1036 rho
    rw [hLc] at r1213
    linear_combination -r1213
  have h14_177 : (8429404847033746103949862958802942655156615580252866767552832809537189051094*rvkAccX176 rho + 4829230689170401974567318880568148208714935176888340488441060551668416755756*rho 1) * (6744273316061359264065612990180407531294457905884589499976832734597190176077*rvkAccY176 rho + 6744273316061359264065612990180407531294457905884589499976832734597190176077 + 3005555258524522938312861139523290434503782011712304083854485010325988667929*rho 1) = rho 1215 := by
    have hL := rvk_lc1037 rho
    have hR := rvk_lc1038 rho
    rw [hL, hR] at r1214
    linear_combination r1214
  have h15_177 : 2884696944226310378518533060192842574148860916956005519155504311771064586065*rvkAccX176 rho + 6744273316061359264065612990180407531294457905884589499976832734597190176077*rvkAccY176 rho + 6744273316061359264065612990180407531294457905884589499976832734597190176077 + 396386756943282430443336090221272456318950815467018656908749496497722592951*rho 1 = rho 1216 := by
    have hLc := rvk_lc1039 rho
    rw [hLc] at r1215
    linear_combination r1215
  have h16_177 : rho 1217 * (1 + rho 1215) = rho 1216 := by
    linear_combination r1216
  have h17_177 : 5559764805202060045730291878588703957227038418198058308779729144146344652976*rvkAccX176 rho + 1700188433367011160183211948601139000081441429269474327958400721320219062964*rvkAccY176 rho + 1700188433367011160183211948601139000081441429269474327958400721320219062964 + 8048074992485087993805488848560274075056948519687045171026483959419686646090*rho 1 = rho 1218 := by
    have hLc := rvk_lc1040 rho
    rw [hLc] at r1217
    linear_combination r1217
  have h18_177 : rho 1219 * (1 + (-1)*rho 1215) = rho 1218 + 1184508510859299218335321111591703574067419487686531191197103590450845523101*rho 1214 := by
    linear_combination r1218
  have hSelX_177 : (1*rho 178) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX176 rho + rho 1217) = rho 1220 := by
    have hLc := rvk_lc1041 rho
    rw [hLc] at r1219
    linear_combination r1219
  have hSelY_177 : (1*rho 178) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY176 rho + rho 1219) = rho 1221 := by
    have hLc := rvk_lc1042 rho
    rw [hLc] at r1220
    linear_combination r1220
  have hr177 : RvkFixedBaseLadderChoiceFree.FixedStepRel 177 (rho 178) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX176 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY176 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX177 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY177 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX177_succ, rvkAccY177_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 177
      (6744273316061359264065612990180407531294457905884589499976832734597190176077 : EdwardsBridge.F) (2884696944226310378518533060192842574148860916956005519155504311771064586065 : EdwardsBridge.F) (1184508510859299218335321111591703574067419487686531191197103590450845523101 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (8429404847033746103949862958802942655156615580252866767552832809537189051094 : EdwardsBridge.F) (4829230689170401974567318880568148208714935176888340488441060551668416755756 : EdwardsBridge.F)
      (3005555258524522938312861139523290434503782011712304083854485010325988667929 : EdwardsBridge.F) (396386756943282430443336090221272456318950815467018656908749496497722592951 : EdwardsBridge.F) (5559764805202060045730291878588703957227038418198058308779729144146344652976 : EdwardsBridge.F)
      (1700188433367011160183211948601139000081441429269474327958400721320219062964 : EdwardsBridge.F) (8048074992485087993805488848560274075056948519687045171026483959419686646090 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX176 rho : F)
      (rvkAccY176 rho : F) (rho 178 : F)
      (rho 1214 : F) (rho 1215 : F) (rho 1216 : F)
      (rho 1218 : F) (rho 1217 : F) (rho 1219 : F)
      (rho 1220 : F) (rho 1221 : F) hacc
      (by rw [C_eq_L177]; simp only [L177])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_177 h14_177 h15_177 h16_177 h17_177 h18_177 hSelX_177 hSelY_177 hbrow177
  exact hr177

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

