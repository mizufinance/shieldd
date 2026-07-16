import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas9
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

theorem rvk_step159 (rho : Nat -> F)
    (r159 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow159 rho)
    (r1069 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1069 rho)
    (r1070 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1070 rho)
    (r1071 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1071 rho)
    (r1072 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1072 rho)
    (r1073 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1073 rho)
    (r1074 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1074 rho)
    (r1075 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1075 rho)
    (r1076 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1076 rho)
    (hacc : onCurve (rvkRvkAcc rho 159)) :
    RvkFixedBaseLadder.FixedStepRel 159 (rho 160)
      (rvkRvkAcc rho 159) (rvkRvkAcc rho (159 + 1)) := by
  have hbrow159 : (1*(rho 160))*(1 + (-1)*(rho 160)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow159] using r159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1069 at r1069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1070 at r1070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1071 at r1071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1072 at r1072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1073 at r1073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1074 at r1074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1075 at r1075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1076 at r1076
  have h13_159 : rho 1070 = rvkAccX158 rho + rvkAccY158 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc910 rho
    rw [hLc] at r1069
    linear_combination -r1069
  have h14_159 : (2789677616256087338473269909774333319106824616035897267090378439059469950323*rvkAccX158 rho + 5323268839113956693263885772837781917558829781354897079105388103037014230979*rho 1) * (2112824320958170751021845696904152700087747239183588522962014905560335724620*rvkAccY158 rho + 2112824320958170751021845696904152700087747239183588522962014905560335724620 + 8260323183280550524731375083778834508884333234987761401263923255304360074933*rho 1) = rho 1071 := by
    have hL := rvk_lc911 rho
    have hR := rvk_lc912 rho
    rw [hL, hR] at r1070
    linear_combination r1070
  have h15_159 : 4344747843835797327580651183308936657754801188826696817569825610372298387097*rvkAccX158 rho + 2112824320958170751021845696904152700087747239183588522962014905560335724620*rvkAccY158 rho + 2112824320958170751021845696904152700087747239183588522962014905560335724620 + 3269761973204431484342385525721567271837064985135459812514098176136714961826*rho 1 = rho 1072 := by
    have hLc := rvk_lc913 rho
    rw [hLc] at r1071
    linear_combination r1071
  have h16_159 : rho 1073 * (1 + rho 1071) = rho 1072 := by
    linear_combination r1072
  have h17_159 : 4099713905592573096668173755472609873621098146327367010365407845545110851944*rvkAccX158 rho + 6331637428470199673226979241877393831288152095970475304973218550357073514421*rvkAccY158 rho + 6331637428470199673226979241877393831288152095970475304973218550357073514421 + 5174699776223938939906439413059979259538834350018604015421135279780694277215*rho 1 = rho 1074 := by
    have hLc := rvk_lc914 rho
    rw [hLc] at r1073
    linear_combination r1073
  have h18_159 : rho 1075 * (1 + (-1)*rho 1071) = rho 1074 + 6457572164793968078602496880213089357842548428010285340531840515932634111717*rho 1070 := by
    linear_combination r1074
  have hSelX_159 : (1*rho 160) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX158 rho + rho 1073) = rho 1076 := by
    have hLc := rvk_lc915 rho
    rw [hLc] at r1075
    linear_combination r1075
  have hSelY_159 : (1*rho 160) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY158 rho + rho 1075) = rho 1077 := by
    have hLc := rvk_lc916 rho
    rw [hLc] at r1076
    linear_combination r1076
  have hr159 : RvkFixedBaseLadder.FixedStepRel 159 (rho 160) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX158 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY158 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX159 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY159 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX159_succ, rvkAccY159_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 159
      (2112824320958170751021845696904152700087747239183588522962014905560335724620 : EdwardsBridge.F) (4344747843835797327580651183308936657754801188826696817569825610372298387097 : EdwardsBridge.F) (6457572164793968078602496880213089357842548428010285340531840515932634111717 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (2789677616256087338473269909774333319106824616035897267090378439059469950323 : EdwardsBridge.F) (5323268839113956693263885772837781917558829781354897079105388103037014230979 : EdwardsBridge.F)
      (8260323183280550524731375083778834508884333234987761401263923255304360074933 : EdwardsBridge.F) (3269761973204431484342385525721567271837064985135459812514098176136714961826 : EdwardsBridge.F) (4099713905592573096668173755472609873621098146327367010365407845545110851944 : EdwardsBridge.F)
      (6331637428470199673226979241877393831288152095970475304973218550357073514421 : EdwardsBridge.F) (5174699776223938939906439413059979259538834350018604015421135279780694277215 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX158 rho : F)
      (rvkAccY158 rho : F) (rho 160 : F)
      (rho 1070 : F) (rho 1071 : F) (rho 1072 : F)
      (rho 1074 : F) (rho 1073 : F) (rho 1075 : F)
      (rho 1076 : F) (rho 1077 : F) hacc
      (by rw [C_eq_L159]; simp only [L159])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_159 h14_159 h15_159 h16_159 h17_159 h18_159 hSelX_159 hSelY_159 hbrow159
  exact hr159

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

