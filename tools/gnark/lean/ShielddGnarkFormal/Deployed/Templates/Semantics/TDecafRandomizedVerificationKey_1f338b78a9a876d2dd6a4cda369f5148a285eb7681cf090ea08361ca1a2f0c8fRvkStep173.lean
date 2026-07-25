import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas23
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

theorem rvk_step173 (rho : Nat -> F)
    (r173 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow173 rho)
    (r1181 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1181 rho)
    (r1182 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1182 rho)
    (r1183 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1183 rho)
    (r1184 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1184 rho)
    (r1185 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1185 rho)
    (r1186 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1186 rho)
    (r1187 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1187 rho)
    (r1188 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1188 rho)
    (hacc : onCurve (rvkRvkAcc rho 173)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 173 (rho 174)
      (rvkRvkAcc rho 173) (rvkRvkAcc rho (173 + 1)) := by
  have hbrow173 : (1*(rho 174))*(1 + (-1)*(rho 174)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow173] using r173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1181 at r1181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1182 at r1182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1183 at r1183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1184 at r1184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1185 at r1185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1186 at r1186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1187 at r1187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1188 at r1188
  have h13_173 : rho 1182 = rvkAccX172 rho + rvkAccY172 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1008 rho
    rw [hLc] at r1181
    linear_combination -r1181
  have h14_173 : (1939637175554028343952877222903386474419120937240795293453235189596207815568*rvkAccX172 rho + 3260487844049681244059064487609986020441575339499381944237059900510287835620*rho 1) * (3981554842788038437983906127460908899641731895452705244011833733867503855692*rvkAccY172 rho + 3981554842788038437983906127460908899641731895452705244011833733867503855692 + 4774531341859335617455251261646898000864070238664000687762939088765552617430*rho 1) = rho 1183 := by
    have hL := rvk_lc1009 rho
    have hR := rvk_lc1010 rho
    rw [hL, hR] at r1182
    linear_combination r1182
  have h15_173 : 7788219156267128113307242355732635558718197507009752605071504019654253011514*rvkAccX172 rho + 3981554842788038437983906127460908899641731895452705244011833733867503855692*rvkAccY172 rho + 3981554842788038437983906127460908899641731895452705244011833733867503855692 + 8426212087505645268336755543188212054487825984129312419384141324226872297676*rho 1 = rho 1184 := by
    have hLc := rvk_lc1011 rho
    rw [hLc] at r1183
    linear_combination r1183
  have h16_173 : rho 1185 * (1 + rho 1183) = rho 1184 := by
    linear_combination r1184
  have h17_173 : 656242593161242310941582583048910972657701828144311222863729436263156227527*rvkAccX172 rho + 4462906906640331986264918811320637631734167439701358583923399722049905383349*rvkAccY172 rho + 4462906906640331986264918811320637631734167439701358583923399722049905383349 + 18249661922725155912069395593334476888073351024751408551092131690536941365*rho 1 = rho 1186 := by
    have hLc := rvk_lc1012 rho
    rw [hLc] at r1185
    linear_combination r1185
  have h18_173 : rho 1187 * (1 + (-1)*rho 1183) = rho 1186 + 3325312249626796127042323544411997926984030067308394021148104297604347628165*rho 1182 := by
    linear_combination r1186
  have hSelX_173 : (1*rho 174) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX172 rho + rho 1185) = rho 1188 := by
    have hLc := rvk_lc1013 rho
    rw [hLc] at r1187
    linear_combination r1187
  have hSelY_173 : (1*rho 174) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY172 rho + rho 1187) = rho 1189 := by
    have hLc := rvk_lc1014 rho
    rw [hLc] at r1188
    linear_combination r1188
  have hr173 : RvkFixedBaseLadderChoiceFree.FixedStepRel 173 (rho 174) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX172 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY172 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX173 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY173 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX173_succ, rvkAccY173_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 173
      (3981554842788038437983906127460908899641731895452705244011833733867503855692 : EdwardsBridge.F) (7788219156267128113307242355732635558718197507009752605071504019654253011514 : EdwardsBridge.F) (3325312249626796127042323544411997926984030067308394021148104297604347628165 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (1939637175554028343952877222903386474419120937240795293453235189596207815568 : EdwardsBridge.F) (3260487844049681244059064487609986020441575339499381944237059900510287835620 : EdwardsBridge.F)
      (4774531341859335617455251261646898000864070238664000687762939088765552617430 : EdwardsBridge.F) (8426212087505645268336755543188212054487825984129312419384141324226872297676 : EdwardsBridge.F) (656242593161242310941582583048910972657701828144311222863729436263156227527 : EdwardsBridge.F)
      (4462906906640331986264918811320637631734167439701358583923399722049905383349 : EdwardsBridge.F) (18249661922725155912069395593334476888073351024751408551092131690536941365 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX172 rho : F)
      (rvkAccY172 rho : F) (rho 174 : F)
      (rho 1182 : F) (rho 1183 : F) (rho 1184 : F)
      (rho 1186 : F) (rho 1185 : F) (rho 1187 : F)
      (rho 1188 : F) (rho 1189 : F) hacc
      (by rw [C_eq_L173]; simp only [L173])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_173 h14_173 h15_173 h16_173 h17_173 h18_173 hSelX_173 hSelY_173 hbrow173
  exact hr173

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

