import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas14
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

theorem rvk_step164 (rho : Nat -> F)
    (r164 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow164 rho)
    (r1109 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1109 rho)
    (r1110 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1110 rho)
    (r1111 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1111 rho)
    (r1112 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1112 rho)
    (r1113 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1113 rho)
    (r1114 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1114 rho)
    (r1115 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1115 rho)
    (r1116 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1116 rho)
    (hacc : onCurve (rvkRvkAcc rho 164)) :
    RvkFixedBaseLadder.FixedStepRel 164 (rho 165)
      (rvkRvkAcc rho 164) (rvkRvkAcc rho (164 + 1)) := by
  have hbrow164 : (1*(rho 165))*(1 + (-1)*(rho 165)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow164] using r164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1109 at r1109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1110 at r1110
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1111 at r1111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1112 at r1112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1113 at r1113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1114 at r1114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1115 at r1115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1116 at r1116
  have h13_164 : rho 1110 = rvkAccX163 rho + rvkAccY163 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc945 rho
    rw [hLc] at r1109
    linear_combination -r1109
  have h14_164 : (7591915007285954813786279363948102390898140889293800745326506857669687311535*rvkAccX163 rho + 752676109079240181974540142102560196399170356736197851325088244375129965020*rho 1) * (7629453598826059175105967161823358156342299852823544371076408212864685795511*rvkAccY163 rho + 7629453598826059175105967161823358156342299852823544371076408212864685795511 + 6963378901194524910437421336346278378990984930436753394335706017205077796909*rho 1) = rho 1111 := by
    have hL := rvk_lc946 rho
    have hR := rvk_lc947 rho
    rw [hL, hR] at r1110
    linear_combination r1110
  have h15_164 : 8256897537593268393783702854546790800908284964448607839999361437332598202648*rvkAccX163 rho + 7629453598826059175105967161823358156342299852823544371076408212864685795511*rvkAccY163 rho + 7629453598826059175105967161823358156342299852823544371076408212864685795511 + 6876975181193465578107153533314128302103777479581725330510923776593007437278*rho 1 = rho 1112 := by
    have hLc := rvk_lc948 rho
    rw [hLc] at r1111
    linear_combination r1111
  have h16_164 : rho 1113 * (1 + rho 1111) = rho 1112 := by
    linear_combination r1112
  have h17_164 : 187564211835102030465122084234755730467614370705455987935872018584811036393*rvkAccX163 rho + 815008150602311249142857776958188375033599482330519456858825243052723443530*rvkAccY163 rho + 815008150602311249142857776958188375033599482330519456858825243052723443530 + 1567486568234904846141671405467418229272121855572338497424309679324401801763*rho 1 = rho 1114 := by
    have hLc := rvk_lc949 rho
    rw [hLc] at r1113
    linear_combination r1113
  have h18_164 : rho 1115 * (1 + (-1)*rho 1111) = rho 1114 + 7441889386990957144640845077588602425874685482118088383140536194279874759118*rho 1110 := by
    linear_combination r1114
  have hSelX_164 : (1*rho 165) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX163 rho + rho 1113) = rho 1116 := by
    have hLc := rvk_lc950 rho
    rw [hLc] at r1115
    linear_combination r1115
  have hSelY_164 : (1*rho 165) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY163 rho + rho 1115) = rho 1117 := by
    have hLc := rvk_lc951 rho
    rw [hLc] at r1116
    linear_combination r1116
  have hr164 : RvkFixedBaseLadder.FixedStepRel 164 (rho 165) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX163 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY163 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX164 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY164 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX164_succ, rvkAccY164_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 164
      (7629453598826059175105967161823358156342299852823544371076408212864685795511 : EdwardsBridge.F) (8256897537593268393783702854546790800908284964448607839999361437332598202648 : EdwardsBridge.F) (7441889386990957144640845077588602425874685482118088383140536194279874759118 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (7591915007285954813786279363948102390898140889293800745326506857669687311535 : EdwardsBridge.F) (752676109079240181974540142102560196399170356736197851325088244375129965020 : EdwardsBridge.F)
      (6963378901194524910437421336346278378990984930436753394335706017205077796909 : EdwardsBridge.F) (6876975181193465578107153533314128302103777479581725330510923776593007437278 : EdwardsBridge.F) (187564211835102030465122084234755730467614370705455987935872018584811036393 : EdwardsBridge.F)
      (815008150602311249142857776958188375033599482330519456858825243052723443530 : EdwardsBridge.F) (1567486568234904846141671405467418229272121855572338497424309679324401801763 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX163 rho : F)
      (rvkAccY163 rho : F) (rho 165 : F)
      (rho 1110 : F) (rho 1111 : F) (rho 1112 : F)
      (rho 1114 : F) (rho 1113 : F) (rho 1115 : F)
      (rho 1116 : F) (rho 1117 : F) hacc
      (by rw [C_eq_L164]; simp only [L164])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_164 h14_164 h15_164 h16_164 h17_164 h18_164 hSelX_164 hSelY_164 hbrow164
  exact hr164

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

