import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas10
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

theorem rvk_step160 (rho : Nat -> F)
    (r160 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow160 rho)
    (r1077 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1077 rho)
    (r1078 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1078 rho)
    (r1079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1079 rho)
    (r1080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1080 rho)
    (r1081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1081 rho)
    (r1082 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1082 rho)
    (r1083 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1083 rho)
    (r1084 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1084 rho)
    (hacc : onCurve (rvkRvkAcc rho 160)) :
    RvkFixedBaseLadder.FixedStepRel 160 (rho 161)
      (rvkRvkAcc rho 160) (rvkRvkAcc rho (160 + 1)) := by
  have hbrow160 : (1*(rho 161))*(1 + (-1)*(rho 161)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow160] using r160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1077 at r1077
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1078 at r1078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1079 at r1079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1080 at r1080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1081 at r1081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1082 at r1082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1083 at r1083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1084 at r1084
  have h13_160 : rho 1078 = rvkAccX159 rho + rvkAccY159 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc917 rho
    rw [hLc] at r1077
    linear_combination -r1077
  have h14_160 : (2554117060204553738923354347035779623957786394083497906575778181170273448320*rvkAccX159 rho + 6857523571503426729129532174907843361487710801004628696177152740200802257352*rho 1) * (6254945723771345049588065443119804200491904836722830947939498923764020842791*rvkAccY159 rho + 6254945723771345049588065443119804200491904836722830947939498923764020842791 + 2051115294603479452337593477691185147131746193167319351376117333630030461682*rho 1) = rho 1079 := by
    have hL := rvk_lc918 rho
    have hR := rvk_lc919 rho
    rw [hL, hR] at r1078
    linear_combination r1078
  have h15_160 : 884145657027331879444406499504139186871480296690753944897090218553813834156*rvkAccX159 rho + 6254945723771345049588065443119804200491904836722830947939498923764020842791*rvkAccY159 rho + 6254945723771345049588065443119804200491904836722830947939498923764020842791 + 1424453139671377526244625560097361868019502022492489913246607113556804286069*rho 1 = rho 1080 := by
    have hLc := rvk_lc920 rho
    rw [hLc] at r1079
    linear_combination r1079
  have h16_160 : rho 1081 * (1 + rho 1079) = rho 1080 := by
    linear_combination r1080
  have h17_160 : 7560316092401038544804418439277407344504419038463309883038143237363595404885*rvkAccX159 rho + 2189516025657025374660759495661742330883994498431232879995734532153388396250*rvkAccY159 rho + 2189516025657025374660759495661742330883994498431232879995734532153388396250 + 7020008609756992898004199378684184663356397312661573914688626342360604952972*rho 1 = rho 1082 := by
    have hLc := rvk_lc921 rho
    rw [hLc] at r1081
    linear_combination r1081
  have h18_160 : rho 1083 * (1 + (-1)*rho 1079) = rho 1082 + 7139091380798676929032471942623943387363385133413584892836589142317834676947*rho 1078 := by
    linear_combination r1082
  have hSelX_160 : (1*rho 161) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX159 rho + rho 1081) = rho 1084 := by
    have hLc := rvk_lc922 rho
    rw [hLc] at r1083
    linear_combination r1083
  have hSelY_160 : (1*rho 161) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY159 rho + rho 1083) = rho 1085 := by
    have hLc := rvk_lc923 rho
    rw [hLc] at r1084
    linear_combination r1084
  have hr160 : RvkFixedBaseLadder.FixedStepRel 160 (rho 161) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX159 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY159 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX160 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY160 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX160_succ, rvkAccY160_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 160
      (6254945723771345049588065443119804200491904836722830947939498923764020842791 : EdwardsBridge.F) (884145657027331879444406499504139186871480296690753944897090218553813834156 : EdwardsBridge.F) (7139091380798676929032471942623943387363385133413584892836589142317834676947 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (2554117060204553738923354347035779623957786394083497906575778181170273448320 : EdwardsBridge.F) (6857523571503426729129532174907843361487710801004628696177152740200802257352 : EdwardsBridge.F)
      (2051115294603479452337593477691185147131746193167319351376117333630030461682 : EdwardsBridge.F) (1424453139671377526244625560097361868019502022492489913246607113556804286069 : EdwardsBridge.F) (7560316092401038544804418439277407344504419038463309883038143237363595404885 : EdwardsBridge.F)
      (2189516025657025374660759495661742330883994498431232879995734532153388396250 : EdwardsBridge.F) (7020008609756992898004199378684184663356397312661573914688626342360604952972 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX159 rho : F)
      (rvkAccY159 rho : F) (rho 161 : F)
      (rho 1078 : F) (rho 1079 : F) (rho 1080 : F)
      (rho 1082 : F) (rho 1081 : F) (rho 1083 : F)
      (rho 1084 : F) (rho 1085 : F) hacc
      (by rw [C_eq_L160]; simp only [L160])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_160 h14_160 h15_160 h16_160 h17_160 h18_160 hSelX_160 hSelY_160 hbrow160
  exact hr160

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

