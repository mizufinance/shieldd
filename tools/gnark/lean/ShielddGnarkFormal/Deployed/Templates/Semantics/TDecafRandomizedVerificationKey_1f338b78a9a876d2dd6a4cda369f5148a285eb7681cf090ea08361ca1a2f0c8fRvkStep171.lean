import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas21
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

theorem rvk_step171 (rho : Nat -> F)
    (r171 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow171 rho)
    (r1165 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1165 rho)
    (r1166 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1166 rho)
    (r1167 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1167 rho)
    (r1168 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1168 rho)
    (r1169 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1169 rho)
    (r1170 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1170 rho)
    (r1171 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1171 rho)
    (r1172 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1172 rho)
    (hacc : onCurve (rvkRvkAcc rho 171)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 171 (rho 172)
      (rvkRvkAcc rho 171) (rvkRvkAcc rho (171 + 1)) := by
  have hbrow171 : (1*(rho 172))*(1 + (-1)*(rho 172)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow171] using r171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1165 at r1165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1166 at r1166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1167 at r1167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1168 at r1168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1169 at r1169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1170 at r1170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1171 at r1171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1172 at r1172
  have h13_171 : rho 1166 = rvkAccX170 rho + rvkAccY170 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc994 rho
    rw [hLc] at r1165
    linear_combination -r1165
  have h14_171 : (4493477507397166489633705024878414293948320914222600880869178529064453280296*rvkAccX170 rho + 7303261112629090045929153821352107980531881325192768366127188115202627453569*rho 1) * (6642304247852007316468237760849180446036251547538434523827277768741710193020*rvkAccY170 rho + 6642304247852007316468237760849180446036251547538434523827277768741710193020 + 8266985018218747902737876725127409567723927972908008121147414056726396810144*rho 1) = rho 1167 := by
    have hL := rvk_lc995 rho
    have hR := rvk_lc996 rho
    rw [hL, hR] at r1166
    linear_combination r1166
  have h15_171 : 1141950966989133498703460536262081893113311899919589752624443703589330494144*rvkAccX170 rho + 6642304247852007316468237760849180446036251547538434523827277768741710193020*rvkAccY170 rho + 6642304247852007316468237760849180446036251547538434523827277768741710193020 + 6234457744974383593301526046010688691569964770436321362335523037927101444845*rho 1 = rho 1168 := by
    have hLc := rvk_lc997 rho
    rw [hLc] at r1167
    linear_combination r1167
  have h16_171 : rho 1169 * (1 + rho 1167) = rho 1168 := by
    linear_combination r1168
  have h17_171 : 7302510782439236925545364402519464638262587435234474075310789752328078744897*rvkAccX170 rho + 1802157501576363107780587177932366085339647787615629304107955687175699046021*rvkAccY170 rho + 1802157501576363107780587177932366085339647787615629304107955687175699046021 + 2210004004453986830947298892770857839805934564717742465599710417990307794196*rho 1 = rho 1170 := by
    have hLc := rvk_lc998 rho
    rw [hLc] at r1169
    linear_combination r1169
  have h18_171 : rho 1171 * (1 + (-1)*rho 1167) = rho 1170 + 7784255214841140815171698297111262339149563447458024276451721472331040687164*rho 1166 := by
    linear_combination r1170
  have hSelX_171 : (1*rho 172) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX170 rho + rho 1169) = rho 1172 := by
    have hLc := rvk_lc999 rho
    rw [hLc] at r1171
    linear_combination r1171
  have hSelY_171 : (1*rho 172) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY170 rho + rho 1171) = rho 1173 := by
    have hLc := rvk_lc1000 rho
    rw [hLc] at r1172
    linear_combination r1172
  have hr171 : RvkFixedBaseLadderChoiceFree.FixedStepRel 171 (rho 172) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX170 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY170 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX171 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY171 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX171_succ, rvkAccY171_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 171
      (6642304247852007316468237760849180446036251547538434523827277768741710193020 : EdwardsBridge.F) (1141950966989133498703460536262081893113311899919589752624443703589330494144 : EdwardsBridge.F) (7784255214841140815171698297111262339149563447458024276451721472331040687164 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4493477507397166489633705024878414293948320914222600880869178529064453280296 : EdwardsBridge.F) (7303261112629090045929153821352107980531881325192768366127188115202627453569 : EdwardsBridge.F)
      (8266985018218747902737876725127409567723927972908008121147414056726396810144 : EdwardsBridge.F) (6234457744974383593301526046010688691569964770436321362335523037927101444845 : EdwardsBridge.F) (7302510782439236925545364402519464638262587435234474075310789752328078744897 : EdwardsBridge.F)
      (1802157501576363107780587177932366085339647787615629304107955687175699046021 : EdwardsBridge.F) (2210004004453986830947298892770857839805934564717742465599710417990307794196 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX170 rho : F)
      (rvkAccY170 rho : F) (rho 172 : F)
      (rho 1166 : F) (rho 1167 : F) (rho 1168 : F)
      (rho 1170 : F) (rho 1169 : F) (rho 1171 : F)
      (rho 1172 : F) (rho 1173 : F) hacc
      (by rw [C_eq_L171]; simp only [L171])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_171 h14_171 h15_171 h16_171 h17_171 h18_171 hSelX_171 hSelY_171 hbrow171
  exact hr171

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

