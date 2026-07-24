import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas20
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

theorem rvk_step170 (rho : Nat -> F)
    (r170 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow170 rho)
    (r1157 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1157 rho)
    (r1158 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1158 rho)
    (r1159 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1159 rho)
    (r1160 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1160 rho)
    (r1161 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1161 rho)
    (r1162 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1162 rho)
    (r1163 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1163 rho)
    (r1164 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1164 rho)
    (hacc : onCurve (rvkRvkAcc rho 170)) :
    RvkFixedBaseLadder.FixedStepRel 170 (rho 171)
      (rvkRvkAcc rho 170) (rvkRvkAcc rho (170 + 1)) := by
  have hbrow170 : (1*(rho 171))*(1 + (-1)*(rho 171)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow170] using r170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1157 at r1157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1158 at r1158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1159 at r1159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1160 at r1160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1161 at r1161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1162 at r1162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1163 at r1163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1164 at r1164
  have h13_170 : rho 1158 = rvkAccX169 rho + rvkAccY169 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc987 rho
    rw [hLc] at r1157
    linear_combination -r1157
  have h14_170 : (7321381047978916657381227325493198811539079499194854071404395739434491179601*rvkAccX169 rho + 1491578523302326890287634702565833052377336688757681437395404834396561461943*rho 1) * (8184062698146943358494781358089637684750315020587119053955285774853199597574*rvkAccY169 rho + 8184062698146943358494781358089637684750315020587119053955285774853199597574 + 1496499589516708972553470574944181141820166792175120230999873448120688628571*rho 1) = rho 1159 := by
    have hL := rvk_lc988 rho
    have hR := rvk_lc989 rho
    rw [hL, hR] at r1158
    linear_combination r1158
  have h15_170 : 7571970803872891766144720013752373785427830016251704634266804566158152502649*rvkAccX169 rho + 8184062698146943358494781358089637684750315020587119053955285774853199597574*rvkAccY169 rho + 8184062698146943358494781358089637684750315020587119053955285774853199597574 + 1986162742338048645222729760309734427501451042536165862024719942533116029529*rho 1 = rho 1160 := by
    have hLc := rvk_lc990 rho
    rw [hLc] at r1159
    linear_combination r1159
  have h16_170 : rho 1161 * (1 + rho 1159) = rho 1160 := by
    linear_combination r1160
  have h17_170 : 872490945555478658104104925029172745948069318902359193668428889759256736392*rvkAccX169 rho + 260399051281427065754043580691908846625584314566944773979947681064209641467*rvkAccY169 rho + 260399051281427065754043580691908846625584314566944773979947681064209641467 + 6458299007090321779026095178471812103874448292617897965910513513384293209512*rho 1 = rho 1162 := by
    have hLc := rvk_lc991 rho
    rw [hLc] at r1161
    linear_combination r1161
  have h18_170 : rho 1163 * (1 + (-1)*rho 1159) = rho 1162 + 7311571752591464700390676433060464938802245701684759860286856885093942861182*rho 1158 := by
    linear_combination r1162
  have hSelX_170 : (1*rho 171) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX169 rho + rho 1161) = rho 1164 := by
    have hLc := rvk_lc992 rho
    rw [hLc] at r1163
    linear_combination r1163
  have hSelY_170 : (1*rho 171) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY169 rho + rho 1163) = rho 1165 := by
    have hLc := rvk_lc993 rho
    rw [hLc] at r1164
    linear_combination r1164
  have hr170 : RvkFixedBaseLadder.FixedStepRel 170 (rho 171) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX169 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY169 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX170 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY170 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX170_succ, rvkAccY170_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 170
      (8184062698146943358494781358089637684750315020587119053955285774853199597574 : EdwardsBridge.F) (7571970803872891766144720013752373785427830016251704634266804566158152502649 : EdwardsBridge.F) (7311571752591464700390676433060464938802245701684759860286856885093942861182 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (7321381047978916657381227325493198811539079499194854071404395739434491179601 : EdwardsBridge.F) (1491578523302326890287634702565833052377336688757681437395404834396561461943 : EdwardsBridge.F)
      (1496499589516708972553470574944181141820166792175120230999873448120688628571 : EdwardsBridge.F) (1986162742338048645222729760309734427501451042536165862024719942533116029529 : EdwardsBridge.F) (872490945555478658104104925029172745948069318902359193668428889759256736392 : EdwardsBridge.F)
      (260399051281427065754043580691908846625584314566944773979947681064209641467 : EdwardsBridge.F) (6458299007090321779026095178471812103874448292617897965910513513384293209512 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX169 rho : F)
      (rvkAccY169 rho : F) (rho 171 : F)
      (rho 1158 : F) (rho 1159 : F) (rho 1160 : F)
      (rho 1162 : F) (rho 1161 : F) (rho 1163 : F)
      (rho 1164 : F) (rho 1165 : F) hacc
      (by rw [C_eq_L170]; simp only [L170])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_170 h14_170 h15_170 h16_170 h17_170 h18_170 hSelX_170 hSelY_170 hbrow170
  exact hr170

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

