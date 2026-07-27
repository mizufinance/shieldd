import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas3
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

theorem rvk_step153 (rho : Nat -> F)
    (r153 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow153 rho)
    (r1021 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1021 rho)
    (r1022 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1022 rho)
    (r1023 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1023 rho)
    (r1024 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1024 rho)
    (r1025 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1025 rho)
    (r1026 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1026 rho)
    (r1027 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1027 rho)
    (r1028 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1028 rho)
    (hacc : onCurve (rvkRvkAcc rho 153)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 153 (rho 154)
      (rvkRvkAcc rho 153) (rvkRvkAcc rho (153 + 1)) := by
  have hbrow153 : (1*(rho 154))*(1 + (-1)*(rho 154)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow153] using r153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1021 at r1021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1022 at r1022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1023 at r1023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1024 at r1024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1025 at r1025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1026 at r1026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1027 at r1027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1028 at r1028
  have h13_153 : rho 1022 = rvkAccX152 rho + rvkAccY152 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc868 rho
    rw [hLc] at r1021
    linear_combination -r1021
  have h14_153 : (1946315734629126190715494719588597209614883259431992422020952894515219751277*rvkAccX152 rho + 8084198416021423620642490167755578137368562306332511210087614204229693258384*rho 1) * (2564178869687967144620376908853437305807031057392074828094095452332896156270*rvkAccY152 rho + 2564178869687967144620376908853437305807031057392074828094095452332896156270 + 8359313933581645652512397357219350377119517449063007939966725768789633840236*rho 1) = rho 1023 := by
    have hL := rvk_lc869 rho
    have hR := rvk_lc870 rho
    rw [hL, hR] at r1022
    linear_combination r1022
  have h15_153 : 3117352256321503525067247699920891419958206766619070890622246360887926686952*rvkAccX152 rho + 2564178869687967144620376908853437305807031057392074828094095452332896156270*rvkAccY152 rho + 2564178869687967144620376908853437305807031057392074828094095452332896156270 + 1401807956203088574472367033684661438030268596952022696554397502973639364250*rho 1 = rho 1024 := by
    have hLc := rvk_lc871 rho
    rw [hLc] at r1023
    linear_combination r1023
  have h16_153 : rho 1025 * (1 + rho 1023) = rho 1024 := by
    linear_combination r1024
  have h17_153 : 5327109493106866899181577238860655111417692568534992937312987095029482552089*rvkAccX152 rho + 5880282879740403279628448029928109225568868277761988999841138003584513082771*rvkAccY152 rho + 5880282879740403279628448029928109225568868277761988999841138003584513082771 + 7042653793225281849776457905096885093345630738202041131380835952943769874791*rho 1 = rho 1026 := by
    have hLc := rvk_lc872 rho
    rw [hLc] at r1025
    linear_combination r1025
  have h18_153 : rho 1027 * (1 + (-1)*rho 1023) = rho 1026 + 5681531126009470669687624608774328725765237824011145718716341813220822843222*rho 1022 := by
    linear_combination r1026
  have hSelX_153 : (1*rho 154) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX152 rho + rho 1025) = rho 1028 := by
    have hLc := rvk_lc873 rho
    rw [hLc] at r1027
    linear_combination r1027
  have hSelY_153 : (1*rho 154) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY152 rho + rho 1027) = rho 1029 := by
    have hLc := rvk_lc874 rho
    rw [hLc] at r1028
    linear_combination r1028
  have hr153 : RvkFixedBaseLadderChoiceFree.FixedStepRel 153 (rho 154) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX152 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY152 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX153 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY153 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX153_succ, rvkAccY153_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 153
      (2564178869687967144620376908853437305807031057392074828094095452332896156270 : EdwardsBridge.F) (3117352256321503525067247699920891419958206766619070890622246360887926686952 : EdwardsBridge.F) (5681531126009470669687624608774328725765237824011145718716341813220822843222 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (1946315734629126190715494719588597209614883259431992422020952894515219751277 : EdwardsBridge.F) (8084198416021423620642490167755578137368562306332511210087614204229693258384 : EdwardsBridge.F)
      (8359313933581645652512397357219350377119517449063007939966725768789633840236 : EdwardsBridge.F) (1401807956203088574472367033684661438030268596952022696554397502973639364250 : EdwardsBridge.F) (5327109493106866899181577238860655111417692568534992937312987095029482552089 : EdwardsBridge.F)
      (5880282879740403279628448029928109225568868277761988999841138003584513082771 : EdwardsBridge.F) (7042653793225281849776457905096885093345630738202041131380835952943769874791 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX152 rho : F)
      (rvkAccY152 rho : F) (rho 154 : F)
      (rho 1022 : F) (rho 1023 : F) (rho 1024 : F)
      (rho 1026 : F) (rho 1025 : F) (rho 1027 : F)
      (rho 1028 : F) (rho 1029 : F) hacc
      (by rw [C_eq_L153]; simp only [L153])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_153 h14_153 h15_153 h16_153 h17_153 h18_153 hSelX_153 hSelY_153 hbrow153
  exact hr153

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

