import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas32
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

theorem rvk_step182 (rho : Nat -> F)
    (r182 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow182 rho)
    (r1253 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1253 rho)
    (r1254 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1254 rho)
    (r1255 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1255 rho)
    (r1256 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1256 rho)
    (r1257 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1257 rho)
    (r1258 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1258 rho)
    (r1259 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1259 rho)
    (r1260 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1260 rho)
    (hacc : onCurve (rvkRvkAcc rho 182)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 182 (rho 183)
      (rvkRvkAcc rho 182) (rvkRvkAcc rho (182 + 1)) := by
  have hbrow182 : (1*(rho 183))*(1 + (-1)*(rho 183)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow182] using r182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1253 at r1253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1254 at r1254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1255 at r1255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1256 at r1256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1257 at r1257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1258 at r1258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1259 at r1259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1260 at r1260
  have h13_182 : rho 1254 = rvkAccX181 rho + rvkAccY181 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1071 rho
    rw [hLc] at r1253
    linear_combination -r1253
  have h14_182 : (7769110293037107941467182288707472071076028180052319464384558761333159830637*rvkAccX181 rho + 3790572865663907955225786599179157900189638421123613224937493625763778412517*rho 1) * (6327076429849916430866448681160993076458441274126141917530053275348287671011*rvkAccY181 rho + 6327076429849916430866448681160993076458441274126141917530053275348287671011 + 6218817503968349421592769403300268152782718674147044423910527527555573304732*rho 1) = rho 1255 := by
    have hL := rvk_lc1072 rho
    have hR := rvk_lc1073 rho
    rw [hL, hR] at r1254
    linear_combination r1254
  have h15_182 : 5819494872841269765244379966862994307800172970749969925652964376208362060998*rvkAccX181 rho + 6327076429849916430866448681160993076458441274126141917530053275348287671011*rvkAccY181 rho + 6327076429849916430866448681160993076458441274126141917530053275348287671011 + 1389873667441848201749424912199528911366841675562106098373570917757652289621*rho 1 = rho 1256 := by
    have hLc := rvk_lc1074 rho
    rw [hLc] at r1255
    linear_combination r1255
  have h16_182 : rho 1257 * (1 + rho 1255) = rho 1256 := by
    linear_combination r1256
  have h17_182 : 2624966876587100659004444971918552223575726364404093902282269079709047178043*rvkAccX181 rho + 2117385319578453993382376257620553454917458061027921910405180180569121568030*rvkAccY181 rho + 2117385319578453993382376257620553454917458061027921910405180180569121568030 + 7054588081986522222499400026582017620009057659591957729561662538159756949420*rho 1 = rho 1258 := by
    have hLc := rvk_lc1075 rho
    rw [hLc] at r1257
    linear_combination r1257
  have h18_182 : rho 1259 * (1 + (-1)*rho 1255) = rho 1258 + 3702109553262815771862003709242440852882714909722048015247784195639240492968*rho 1254 := by
    linear_combination r1258
  have hSelX_182 : (1*rho 183) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX181 rho + rho 1257) = rho 1260 := by
    have hLc := rvk_lc1076 rho
    rw [hLc] at r1259
    linear_combination r1259
  have hSelY_182 : (1*rho 183) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY181 rho + rho 1259) = rho 1261 := by
    have hLc := rvk_lc1077 rho
    rw [hLc] at r1260
    linear_combination r1260
  have hr182 : RvkFixedBaseLadderChoiceFree.FixedStepRel 182 (rho 183) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX181 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY181 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX182 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY182 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX182_succ, rvkAccY182_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 182
      (6327076429849916430866448681160993076458441274126141917530053275348287671011 : EdwardsBridge.F) (5819494872841269765244379966862994307800172970749969925652964376208362060998 : EdwardsBridge.F) (3702109553262815771862003709242440852882714909722048015247784195639240492968 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (7769110293037107941467182288707472071076028180052319464384558761333159830637 : EdwardsBridge.F) (3790572865663907955225786599179157900189638421123613224937493625763778412517 : EdwardsBridge.F)
      (6218817503968349421592769403300268152782718674147044423910527527555573304732 : EdwardsBridge.F) (1389873667441848201749424912199528911366841675562106098373570917757652289621 : EdwardsBridge.F) (2624966876587100659004444971918552223575726364404093902282269079709047178043 : EdwardsBridge.F)
      (2117385319578453993382376257620553454917458061027921910405180180569121568030 : EdwardsBridge.F) (7054588081986522222499400026582017620009057659591957729561662538159756949420 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX181 rho : F)
      (rvkAccY181 rho : F) (rho 183 : F)
      (rho 1254 : F) (rho 1255 : F) (rho 1256 : F)
      (rho 1258 : F) (rho 1257 : F) (rho 1259 : F)
      (rho 1260 : F) (rho 1261 : F) hacc
      (by rw [C_eq_L182]; simp only [L182])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_182 h14_182 h15_182 h16_182 h17_182 h18_182 hSelX_182 hSelY_182 hbrow182
  exact hr182

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

