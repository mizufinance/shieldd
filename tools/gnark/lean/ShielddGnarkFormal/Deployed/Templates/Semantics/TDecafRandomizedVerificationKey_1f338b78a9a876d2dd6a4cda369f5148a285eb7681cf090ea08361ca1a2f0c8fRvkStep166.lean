import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas16
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

theorem rvk_step166 (rho : Nat -> F)
    (r166 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow166 rho)
    (r1125 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1125 rho)
    (r1126 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1126 rho)
    (r1127 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1127 rho)
    (r1128 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1128 rho)
    (r1129 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1129 rho)
    (r1130 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1130 rho)
    (r1131 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1131 rho)
    (r1132 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1132 rho)
    (hacc : onCurve (rvkRvkAcc rho 166)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 166 (rho 167)
      (rvkRvkAcc rho 166) (rvkRvkAcc rho (166 + 1)) := by
  have hbrow166 : (1*(rho 167))*(1 + (-1)*(rho 167)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow166] using r166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1125 at r1125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1126 at r1126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1127 at r1127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1128 at r1128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1129 at r1129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1130 at r1130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1131 at r1131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1132 at r1132
  have h13_166 : rho 1126 = rvkAccX165 rho + rvkAccY165 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc959 rho
    rw [hLc] at r1125
    linear_combination -r1125
  have h14_166 : (6752900520793684586460825202669617871789922920207616704230916223175399863426*rvkAccX165 rho + 2172110831757520459045122539396047039067655777716602916546462073822197938371*rho 1) * (134981315129973742343420017434531221155794090476452068230443324353935350223*rvkAccY165 rho + 134981315129973742343420017434531221155794090476452068230443324353935350223 + 3286899558619516634992467298345430043381724126815233902352925627152671136555*rho 1) = rho 1127 := by
    have hL := rvk_lc960 rho
    have hR := rvk_lc961 rho
    rw [hL, hR] at r1126
    linear_combination r1126
  have h15_166 : 3518664608176657953754214696520971583695025252083422678664930355434384714524*rvkAccX165 rho + 134981315129973742343420017434531221155794090476452068230443324353935350223*rvkAccY165 rho + 134981315129973742343420017434531221155794090476452068230443324353935350223 + 5342130110311542382189399258803501128320603195704990114351913727838906816341*rho 1 = rho 1128 := by
    have hLc := rvk_lc962 rho
    rw [hLc] at r1127
    linear_combination r1127
  have h16_166 : rho 1129 * (1 + rho 1127) = rho 1128 := by
    linear_combination r1128
  have h17_166 : 4925797141251712470494610242260574947680874083070641149270303100483024524517*rvkAccX165 rho + 8309480434298396681905404921347015310220105244677611759704790131563473888818*rvkAccY165 rho + 8309480434298396681905404921347015310220105244677611759704790131563473888818 + 3102331639116828042059425679978045403055296139449073713583319728078502422700*rho 1 = rho 1130 := by
    have hLc := rvk_lc963 rho
    rw [hLc] at r1129
    linear_combination r1129
  have h18_166 : rho 1131 * (1 + (-1)*rho 1127) = rho 1130 + 3653645923306631696097634713955502804850819342559874746895373679788320064747*rho 1126 := by
    linear_combination r1130
  have hSelX_166 : (1*rho 167) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX165 rho + rho 1129) = rho 1132 := by
    have hLc := rvk_lc964 rho
    rw [hLc] at r1131
    linear_combination r1131
  have hSelY_166 : (1*rho 167) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY165 rho + rho 1131) = rho 1133 := by
    have hLc := rvk_lc965 rho
    rw [hLc] at r1132
    linear_combination r1132
  have hr166 : RvkFixedBaseLadderChoiceFree.FixedStepRel 166 (rho 167) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX165 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY165 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX166 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY166 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX166_succ, rvkAccY166_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 166
      (134981315129973742343420017434531221155794090476452068230443324353935350223 : EdwardsBridge.F) (3518664608176657953754214696520971583695025252083422678664930355434384714524 : EdwardsBridge.F) (3653645923306631696097634713955502804850819342559874746895373679788320064747 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (6752900520793684586460825202669617871789922920207616704230916223175399863426 : EdwardsBridge.F) (2172110831757520459045122539396047039067655777716602916546462073822197938371 : EdwardsBridge.F)
      (3286899558619516634992467298345430043381724126815233902352925627152671136555 : EdwardsBridge.F) (5342130110311542382189399258803501128320603195704990114351913727838906816341 : EdwardsBridge.F) (4925797141251712470494610242260574947680874083070641149270303100483024524517 : EdwardsBridge.F)
      (8309480434298396681905404921347015310220105244677611759704790131563473888818 : EdwardsBridge.F) (3102331639116828042059425679978045403055296139449073713583319728078502422700 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX165 rho : F)
      (rvkAccY165 rho : F) (rho 167 : F)
      (rho 1126 : F) (rho 1127 : F) (rho 1128 : F)
      (rho 1130 : F) (rho 1129 : F) (rho 1131 : F)
      (rho 1132 : F) (rho 1133 : F) hacc
      (by rw [C_eq_L166]; simp only [L166])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_166 h14_166 h15_166 h16_166 h17_166 h18_166 hSelX_166 hSelY_166 hbrow166
  exact hr166

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

