import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas22
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

theorem rvk_step172 (rho : Nat -> F)
    (r172 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow172 rho)
    (r1173 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1173 rho)
    (r1174 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1174 rho)
    (r1175 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1175 rho)
    (r1176 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1176 rho)
    (r1177 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1177 rho)
    (r1178 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1178 rho)
    (r1179 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1179 rho)
    (r1180 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1180 rho)
    (hacc : onCurve (rvkRvkAcc rho 172)) :
    RvkFixedBaseLadder.FixedStepRel 172 (rho 173)
      (rvkRvkAcc rho 172) (rvkRvkAcc rho (172 + 1)) := by
  have hbrow172 : (1*(rho 173))*(1 + (-1)*(rho 173)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow172] using r172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1173 at r1173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1174 at r1174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1175 at r1175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1176 at r1176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1177 at r1177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1178 at r1178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1179 at r1179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1180 at r1180
  have h13_172 : rho 1174 = rvkAccX171 rho + rvkAccY171 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1001 rho
    rw [hLc] at r1173
    linear_combination -r1173
  have h14_172 : (3365942066523477375214627643615779220768672575053196459320072238144942379339*rvkAccX171 rho + 1423821851998518400139618756530695611128436944393141932155203380004394904671*rho 1) * (1479178273223536705846674523499032468866589897110292784181593712648855960454*rvkAccY171 rho + 1479178273223536705846674523499032468866589897110292784181593712648855960454 + 637151713021132173793552022640666717427664671317187890220840102765594785537*rho 1) = rho 1175 := by
    have hL := rvk_lc1002 rho
    have hR := rvk_lc1003 rho
    rw [hL, hR] at r1174
    linear_combination r1174
  have h15_172 : 3115026921856910999665145848873306393635723446519920655670033148669360752953*rvkAccX171 rho + 1479178273223536705846674523499032468866589897110292784181593712648855960454*rvkAccY171 rho + 1479178273223536705846674523499032468866589897110292784181593712648855960454 + 2124698046204810288358435996883736379891453775337828439176053410255851690560*rho 1 = rho 1176 := by
    have hLc := rvk_lc1004 rho
    rw [hLc] at r1175
    linear_combination r1175
  have h16_172 : rho 1177 * (1 + rho 1175) = rho 1176 := by
    linear_combination r1176
  have h17_172 : 5329434827571459424583679089908240137740175888634143172265200307248048486088*rvkAccX171 rho + 6965283476204833718402150415282514062509309438043771043753639743268553278587*rvkAccY171 rho + 6965283476204833718402150415282514062509309438043771043753639743268553278587 + 6319763703223560135890388941897810151484445559816235388759180045661557548481*rho 1 = rho 1178 := by
    have hLc := rvk_lc1005 rho
    rw [hLc] at r1177
    linear_combination r1177
  have h18_172 : rho 1179 * (1 + (-1)*rho 1175) = rho 1178 + 4594205195080447705511820372372338862502313343630213439851626861318216713407*rho 1174 := by
    linear_combination r1178
  have hSelX_172 : (1*rho 173) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX171 rho + rho 1177) = rho 1180 := by
    have hLc := rvk_lc1006 rho
    rw [hLc] at r1179
    linear_combination r1179
  have hSelY_172 : (1*rho 173) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY171 rho + rho 1179) = rho 1181 := by
    have hLc := rvk_lc1007 rho
    rw [hLc] at r1180
    linear_combination r1180
  have hr172 : RvkFixedBaseLadder.FixedStepRel 172 (rho 173) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX171 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY171 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX172 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY172 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX172_succ, rvkAccY172_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 172
      (1479178273223536705846674523499032468866589897110292784181593712648855960454 : EdwardsBridge.F) (3115026921856910999665145848873306393635723446519920655670033148669360752953 : EdwardsBridge.F) (4594205195080447705511820372372338862502313343630213439851626861318216713407 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3365942066523477375214627643615779220768672575053196459320072238144942379339 : EdwardsBridge.F) (1423821851998518400139618756530695611128436944393141932155203380004394904671 : EdwardsBridge.F)
      (637151713021132173793552022640666717427664671317187890220840102765594785537 : EdwardsBridge.F) (2124698046204810288358435996883736379891453775337828439176053410255851690560 : EdwardsBridge.F) (5329434827571459424583679089908240137740175888634143172265200307248048486088 : EdwardsBridge.F)
      (6965283476204833718402150415282514062509309438043771043753639743268553278587 : EdwardsBridge.F) (6319763703223560135890388941897810151484445559816235388759180045661557548481 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX171 rho : F)
      (rvkAccY171 rho : F) (rho 173 : F)
      (rho 1174 : F) (rho 1175 : F) (rho 1176 : F)
      (rho 1178 : F) (rho 1177 : F) (rho 1179 : F)
      (rho 1180 : F) (rho 1181 : F) hacc
      (by rw [C_eq_L172]; simp only [L172])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_172 h14_172 h15_172 h16_172 h17_172 h18_172 hSelX_172 hSelY_172 hbrow172
  exact hr172

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

