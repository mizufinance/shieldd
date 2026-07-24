import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas6
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

theorem rvk_step156 (rho : Nat -> F)
    (r156 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow156 rho)
    (r1045 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1045 rho)
    (r1046 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1046 rho)
    (r1047 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1047 rho)
    (r1048 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1048 rho)
    (r1049 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1049 rho)
    (r1050 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1050 rho)
    (r1051 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1051 rho)
    (r1052 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1052 rho)
    (hacc : onCurve (rvkRvkAcc rho 156)) :
    RvkFixedBaseLadder.FixedStepRel 156 (rho 157)
      (rvkRvkAcc rho 156) (rvkRvkAcc rho (156 + 1)) := by
  have hbrow156 : (1*(rho 157))*(1 + (-1)*(rho 157)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow156] using r156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1045 at r1045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1046 at r1046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1047 at r1047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1048 at r1048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1049 at r1049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1050 at r1050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1051 at r1051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1052 at r1052
  have h13_156 : rho 1046 = rvkAccX155 rho + rvkAccY155 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc889 rho
    rw [hLc] at r1045
    linear_combination -r1045
  have h14_156 : (16584842977476778781971574146594730782542467233602097689905393271237537493*rvkAccX155 rho + 3748882087243726086007231001579964875968325427120256406653143658307105684020*rho 1) * (762645621093534921682121564019936658324020975024203898001773730935157047072*rvkAccY155 rho + 762645621093534921682121564019936658324020975024203898001773730935157047072 + 6655627651738650277154479516854397930477796078333111284837643786663947613835*rho 1) = rho 1047 := by
    have hL := rvk_lc890 rho
    have hR := rvk_lc891 rho
    rw [hL, hR] at r1046
    linear_combination r1046
  have h15_156 : 6873534600028911072494750908983108081888155911158913126445027796588606605872*rvkAccX155 rho + 762645621093534921682121564019936658324020975024203898001773730935157047072*rvkAccY155 rho + 762645621093534921682121564019936658324020975024203898001773730935157047072 + 5044007146166678741667698729474268045099469169707896265866449956671879416138*rho 1 = rho 1048 := by
    have hLc := rvk_lc892 rho
    rw [hLc] at r1047
    linear_combination r1047
  have h16_156 : rho 1049 * (1 + rho 1047) = rho 1048 := by
    linear_combination r1048
  have h17_156 : 1570927149399459351754074029798438449487743423995150701490205659328802633169*rvkAccX155 rho + 7681816128334835502566703374761609873051878360129859929933459724982252191969*rvkAccY155 rho + 7681816128334835502566703374761609873051878360129859929933459724982252191969 + 3400454603261691682581126209307278486276430165446167562068783499245529822903*rho 1 = rho 1050 := by
    have hLc := rvk_lc893 rho
    rw [hLc] at r1049
    linear_combination r1049
  have h18_156 : rho 1051 * (1 + (-1)*rho 1047) = rho 1050 + 7636180221122445994176872473003044740212176886183117024446801527523763652944*rho 1046 := by
    linear_combination r1050
  have hSelX_156 : (1*rho 157) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX155 rho + rho 1049) = rho 1052 := by
    have hLc := rvk_lc894 rho
    rw [hLc] at r1051
    linear_combination r1051
  have hSelY_156 : (1*rho 157) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY155 rho + rho 1051) = rho 1053 := by
    have hLc := rvk_lc895 rho
    rw [hLc] at r1052
    linear_combination r1052
  have hr156 : RvkFixedBaseLadder.FixedStepRel 156 (rho 157) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX155 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY155 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX156 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY156 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX156_succ, rvkAccY156_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 156
      (762645621093534921682121564019936658324020975024203898001773730935157047072 : EdwardsBridge.F) (6873534600028911072494750908983108081888155911158913126445027796588606605872 : EdwardsBridge.F) (7636180221122445994176872473003044740212176886183117024446801527523763652944 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (16584842977476778781971574146594730782542467233602097689905393271237537493 : EdwardsBridge.F) (3748882087243726086007231001579964875968325427120256406653143658307105684020 : EdwardsBridge.F)
      (6655627651738650277154479516854397930477796078333111284837643786663947613835 : EdwardsBridge.F) (5044007146166678741667698729474268045099469169707896265866449956671879416138 : EdwardsBridge.F) (1570927149399459351754074029798438449487743423995150701490205659328802633169 : EdwardsBridge.F)
      (7681816128334835502566703374761609873051878360129859929933459724982252191969 : EdwardsBridge.F) (3400454603261691682581126209307278486276430165446167562068783499245529822903 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX155 rho : F)
      (rvkAccY155 rho : F) (rho 157 : F)
      (rho 1046 : F) (rho 1047 : F) (rho 1048 : F)
      (rho 1050 : F) (rho 1049 : F) (rho 1051 : F)
      (rho 1052 : F) (rho 1053 : F) hacc
      (by rw [C_eq_L156]; simp only [L156])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_156 h14_156 h15_156 h16_156 h17_156 h18_156 hSelX_156 hSelY_156 hbrow156
  exact hr156

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

