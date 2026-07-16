import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas2
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

theorem rvk_step152 (rho : Nat -> F)
    (r152 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow152 rho)
    (r1013 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1013 rho)
    (r1014 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1014 rho)
    (r1015 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1015 rho)
    (r1016 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1016 rho)
    (r1017 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1017 rho)
    (r1018 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1018 rho)
    (r1019 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1019 rho)
    (r1020 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1020 rho)
    (hacc : onCurve (rvkRvkAcc rho 152)) :
    RvkFixedBaseLadder.FixedStepRel 152 (rho 153)
      (rvkRvkAcc rho 152) (rvkRvkAcc rho (152 + 1)) := by
  have hbrow152 : (1*(rho 153))*(1 + (-1)*(rho 153)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow152] using r152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1013 at r1013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1014 at r1014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1015 at r1015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1016 at r1016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1017 at r1017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1018 at r1018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1019 at r1019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1020 at r1020
  have h13_152 : rho 1014 = rvkAccX151 rho + rvkAccY151 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc861 rho
    rw [hLc] at r1013
    linear_combination -r1013
  have h14_152 : (4581139559655131800588800064852870173629595321372597681225314801325210445827*rvkAccX151 rho + 5270411603461582088167028508315370011555073697546563505417240778775115497472*rho 1) * (2819632380249469950141144320371320380096821306476083766224419090990878847763*rvkAccY151 rho + 2819632380249469950141144320371320380096821306476083766224419090990878847763 + 6468272815759537655347467424063497937855302588140460740361281552813528541125*rho 1) = rho 1015 := by
    have hL := rvk_lc862 rho
    have hR := rvk_lc863 rho
    rw [hL, hR] at r1014
    linear_combination r1014
  have h15_152 : 2089571024952879125691645491338850754422848857557583011303821485061777527974*rvkAccX151 rho + 2819632380249469950141144320371320380096821306476083766224419090990878847763*rvkAccY151 rho + 2819632380249469950141144320371320380096821306476083766224419090990878847763 + 7412017940274871126072399907637710632686561492359085723320431144148497766234*rho 1 = rho 1016 := by
    have hLc := rvk_lc864 rho
    rw [hLc] at r1015
    linear_combination r1015
  have h16_152 : rho 1017 * (1 + rho 1015) = rho 1016 := by
    linear_combination r1016
  have h17_152 : 6354890724475491298557179447442695776953050477596480816631411970855631711067*rvkAccX151 rho + 5624829369178900474107680618410226151279078028677980061710814364926530391278*rvkAccY151 rho + 5624829369178900474107680618410226151279078028677980061710814364926530391278 + 1032443809153499298176425031143835898689337842794978104614802311768911472807*rho 1 = rho 1018 := by
    have hLc := rvk_lc865 rho
    rw [hLc] at r1017
    linear_combination r1017
  have h18_152 : rho 1019 * (1 + (-1)*rho 1015) = rho 1018 + 4909203405202349075832789811710171134519670164033666777528240576052656375737*rho 1014 := by
    linear_combination r1018
  have hSelX_152 : (1*rho 153) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX151 rho + rho 1017) = rho 1020 := by
    have hLc := rvk_lc866 rho
    rw [hLc] at r1019
    linear_combination r1019
  have hSelY_152 : (1*rho 153) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY151 rho + rho 1019) = rho 1021 := by
    have hLc := rvk_lc867 rho
    rw [hLc] at r1020
    linear_combination r1020
  have hr152 : RvkFixedBaseLadder.FixedStepRel 152 (rho 153) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX151 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY151 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX152 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY152 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX152_succ, rvkAccY152_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 152
      (2819632380249469950141144320371320380096821306476083766224419090990878847763 : EdwardsBridge.F) (2089571024952879125691645491338850754422848857557583011303821485061777527974 : EdwardsBridge.F) (4909203405202349075832789811710171134519670164033666777528240576052656375737 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4581139559655131800588800064852870173629595321372597681225314801325210445827 : EdwardsBridge.F) (5270411603461582088167028508315370011555073697546563505417240778775115497472 : EdwardsBridge.F)
      (6468272815759537655347467424063497937855302588140460740361281552813528541125 : EdwardsBridge.F) (7412017940274871126072399907637710632686561492359085723320431144148497766234 : EdwardsBridge.F) (6354890724475491298557179447442695776953050477596480816631411970855631711067 : EdwardsBridge.F)
      (5624829369178900474107680618410226151279078028677980061710814364926530391278 : EdwardsBridge.F) (1032443809153499298176425031143835898689337842794978104614802311768911472807 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX151 rho : F)
      (rvkAccY151 rho : F) (rho 153 : F)
      (rho 1014 : F) (rho 1015 : F) (rho 1016 : F)
      (rho 1018 : F) (rho 1017 : F) (rho 1019 : F)
      (rho 1020 : F) (rho 1021 : F) hacc
      (by rw [C_eq_L152]; simp only [L152])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_152 h14_152 h15_152 h16_152 h17_152 h18_152 hSelX_152 hSelY_152 hbrow152
  exact hr152

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

