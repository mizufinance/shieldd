import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas28
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

theorem rvk_step178 (rho : Nat -> F)
    (r178 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow178 rho)
    (r1221 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1221 rho)
    (r1222 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1222 rho)
    (r1223 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1223 rho)
    (r1224 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1224 rho)
    (r1225 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1225 rho)
    (r1226 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1226 rho)
    (r1227 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1227 rho)
    (r1228 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1228 rho)
    (hacc : onCurve (rvkRvkAcc rho 178)) :
    RvkFixedBaseLadder.FixedStepRel 178 (rho 179)
      (rvkRvkAcc rho 178) (rvkRvkAcc rho (178 + 1)) := by
  have hbrow178 : (1*(rho 179))*(1 + (-1)*(rho 179)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow178] using r178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1221 at r1221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1222 at r1222
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1223 at r1223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1224 at r1224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1225 at r1225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1226 at r1226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1227 at r1227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1228 at r1228
  have h13_178 : rho 1222 = rvkAccX177 rho + rvkAccY177 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1043 rho
    rw [hLc] at r1221
    linear_combination -r1221
  have h14_178 : (7478308139881087885260569335756343006702543444976098609857214758479369089981*rvkAccX177 rho + 6009052586955181728039866063746186622919640724674161715721640281959638724821*rho 1) * (1055061368777753524672144280273436402122443037262012233559197529002527081090*rvkAccY177 rho + 1055061368777753524672144280273436402122443037262012233559197529002527081090 + 3199699012557669150509061822340357724213213904444938571111818980989777439425*rho 1) = rho 1223 := by
    have hL := rvk_lc1044 rho
    have hR := rvk_lc1045 rho
    rw [hL, hR] at r1222
    linear_combination r1222
  have h15_178 : 7040924526051147903390864536639420890106328060034064487703003990982626889439*rvkAccX177 rho + 1055061368777753524672144280273436402122443037262012233559197529002527081090*rvkAccY177 rho + 1055061368777753524672144280273436402122443037262012233559197529002527081090 + 5834817192150016095682988653984172030462474683802701658708876761776324656208*rho 1 = rho 1224 := by
    have hLc := rvk_lc1046 rho
    rw [hLc] at r1223
    linear_combination r1223
  have h16_178 : rho 1225 * (1 + rho 1223) = rho 1224 := by
    linear_combination r1224
  have h17_178 : 1403537223377222520857960402142125641269571275119999340232229464934782349602*rvkAccX177 rho + 7389400380650616899576680658508110129253456297892051594376035926914882157951*rvkAccY177 rho + 7389400380650616899576680658508110129253456297892051594376035926914882157951 + 2609644557278354328565836284797374500913424651351362169226356694141084582833*rho 1 = rho 1226 := by
    have hLc := rvk_lc1047 rho
    rw [hLc] at r1225
    linear_combination r1225
  have h18_178 : rho 1227 * (1 + (-1)*rho 1223) = rho 1226 + 8095985894828901428063008816912857292228771097296076721262201519985153970529*rho 1222 := by
    linear_combination r1226
  have hSelX_178 : (1*rho 179) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX177 rho + rho 1225) = rho 1228 := by
    have hLc := rvk_lc1048 rho
    rw [hLc] at r1227
    linear_combination r1227
  have hSelY_178 : (1*rho 179) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY177 rho + rho 1227) = rho 1229 := by
    have hLc := rvk_lc1049 rho
    rw [hLc] at r1228
    linear_combination r1228
  have hr178 : RvkFixedBaseLadder.FixedStepRel 178 (rho 179) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX177 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY177 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX178 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY178 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX178_succ, rvkAccY178_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 178
      (1055061368777753524672144280273436402122443037262012233559197529002527081090 : EdwardsBridge.F) (7040924526051147903390864536639420890106328060034064487703003990982626889439 : EdwardsBridge.F) (8095985894828901428063008816912857292228771097296076721262201519985153970529 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (7478308139881087885260569335756343006702543444976098609857214758479369089981 : EdwardsBridge.F) (6009052586955181728039866063746186622919640724674161715721640281959638724821 : EdwardsBridge.F)
      (3199699012557669150509061822340357724213213904444938571111818980989777439425 : EdwardsBridge.F) (5834817192150016095682988653984172030462474683802701658708876761776324656208 : EdwardsBridge.F) (1403537223377222520857960402142125641269571275119999340232229464934782349602 : EdwardsBridge.F)
      (7389400380650616899576680658508110129253456297892051594376035926914882157951 : EdwardsBridge.F) (2609644557278354328565836284797374500913424651351362169226356694141084582833 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX177 rho : F)
      (rvkAccY177 rho : F) (rho 179 : F)
      (rho 1222 : F) (rho 1223 : F) (rho 1224 : F)
      (rho 1226 : F) (rho 1225 : F) (rho 1227 : F)
      (rho 1228 : F) (rho 1229 : F) hacc
      (by rw [C_eq_L178]; simp only [L178])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_178 h14_178 h15_178 h16_178 h17_178 h18_178 hSelX_178 hSelY_178 hbrow178
  exact hr178

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

