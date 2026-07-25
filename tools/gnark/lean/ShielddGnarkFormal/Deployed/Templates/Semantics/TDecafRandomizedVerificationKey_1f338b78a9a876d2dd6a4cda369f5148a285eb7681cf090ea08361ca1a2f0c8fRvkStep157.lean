import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas7
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

theorem rvk_step157 (rho : Nat -> F)
    (r157 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow157 rho)
    (r1053 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1053 rho)
    (r1054 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1054 rho)
    (r1055 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1055 rho)
    (r1056 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1056 rho)
    (r1057 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1057 rho)
    (r1058 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1058 rho)
    (r1059 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1059 rho)
    (r1060 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1060 rho)
    (hacc : onCurve (rvkRvkAcc rho 157)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 157 (rho 158)
      (rvkRvkAcc rho 157) (rvkRvkAcc rho (157 + 1)) := by
  have hbrow157 : (1*(rho 158))*(1 + (-1)*(rho 158)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow157] using r157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1053 at r1053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1054 at r1054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1055 at r1055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1056 at r1056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1057 at r1057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1058 at r1058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1059 at r1059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1060 at r1060
  have h13_157 : rho 1054 = rvkAccX156 rho + rvkAccY156 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc896 rho
    rw [hLc] at r1053
    linear_combination -r1053
  have h14_157 : (1999964692048324961697239574371922163558405393968880632862001941840419525236*rvkAccX156 rho + 2977088419243879867354184368545546907918077720801643958738476806101681393830*rho 1) * (2139803059408643861427175686180858835252725442320075505016370120577874875581*rvkAccY156 rho + 2139803059408643861427175686180858835252725442320075505016370120577874875581 + 7530523190265728170221051900065334925945862915140933852361276038313370483099*rho 1) = rho 1055 := by
    have hL := rvk_lc897 rho
    have hR := rvk_lc898 rho
    rw [hL, hR] at r1054
    linear_combination r1054
  have h15_157 : 8255046511338638261426175863553882432742995412811625079286860773672939391729*rvkAccX156 rho + 2139803059408643861427175686180858835252725442320075505016370120577874875581*rvkAccY156 rho + 2139803059408643861427175686180858835252725442320075505016370120577874875581 + 7176511421395102826291145715736731528866478228665010495132200840665105242462*rho 1 = rho 1056 := by
    have hLc := rvk_lc899 rho
    rw [hLc] at r1055
    linear_combination r1055
  have h16_157 : rho 1057 * (1 + rho 1055) = rho 1056 := by
    linear_combination r1056
  have h17_157 : 189415238089732162822649075227664098632903922342438748648372682244469847312*rvkAccX156 rho + 6304658690019726562821649252600687696123173892833988322918863335339534363460*rvkAccY156 rho + 6304658690019726562821649252600687696123173892833988322918863335339534363460 + 1267950328033267597957679223044815002509421106489053332803032615252303996579*rho 1 = rho 1058 := by
    have hLc := rvk_lc900 rho
    rw [hLc] at r1057
    linear_combination r1057
  have h18_157 : rho 1059 * (1 + (-1)*rho 1055) = rho 1058 + 1950387821318911698604526610953194736619821519977636756367997438333405028269*rho 1054 := by
    linear_combination r1058
  have hSelX_157 : (1*rho 158) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX156 rho + rho 1057) = rho 1060 := by
    have hLc := rvk_lc901 rho
    rw [hLc] at r1059
    linear_combination r1059
  have hSelY_157 : (1*rho 158) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY156 rho + rho 1059) = rho 1061 := by
    have hLc := rvk_lc902 rho
    rw [hLc] at r1060
    linear_combination r1060
  have hr157 : RvkFixedBaseLadderChoiceFree.FixedStepRel 157 (rho 158) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX156 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY156 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX157 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY157 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX157_succ, rvkAccY157_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 157
      (2139803059408643861427175686180858835252725442320075505016370120577874875581 : EdwardsBridge.F) (8255046511338638261426175863553882432742995412811625079286860773672939391729 : EdwardsBridge.F) (1950387821318911698604526610953194736619821519977636756367997438333405028269 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (1999964692048324961697239574371922163558405393968880632862001941840419525236 : EdwardsBridge.F) (2977088419243879867354184368545546907918077720801643958738476806101681393830 : EdwardsBridge.F)
      (7530523190265728170221051900065334925945862915140933852361276038313370483099 : EdwardsBridge.F) (7176511421395102826291145715736731528866478228665010495132200840665105242462 : EdwardsBridge.F) (189415238089732162822649075227664098632903922342438748648372682244469847312 : EdwardsBridge.F)
      (6304658690019726562821649252600687696123173892833988322918863335339534363460 : EdwardsBridge.F) (1267950328033267597957679223044815002509421106489053332803032615252303996579 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX156 rho : F)
      (rvkAccY156 rho : F) (rho 158 : F)
      (rho 1054 : F) (rho 1055 : F) (rho 1056 : F)
      (rho 1058 : F) (rho 1057 : F) (rho 1059 : F)
      (rho 1060 : F) (rho 1061 : F) hacc
      (by rw [C_eq_L157]; simp only [L157])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_157 h14_157 h15_157 h16_157 h17_157 h18_157 hSelX_157 hSelY_157 hbrow157
  exact hr157

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

