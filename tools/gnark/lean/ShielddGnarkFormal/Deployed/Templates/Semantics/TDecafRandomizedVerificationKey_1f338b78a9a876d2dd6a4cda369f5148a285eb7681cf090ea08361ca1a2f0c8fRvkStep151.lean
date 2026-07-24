import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas1
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

theorem rvk_step151 (rho : Nat -> F)
    (r151 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow151 rho)
    (r1005 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1005 rho)
    (r1006 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1006 rho)
    (r1007 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1007 rho)
    (r1008 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1008 rho)
    (r1009 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1009 rho)
    (r1010 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1010 rho)
    (r1011 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1011 rho)
    (r1012 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1012 rho)
    (hacc : onCurve (rvkRvkAcc rho 151)) :
    RvkFixedBaseLadder.FixedStepRel 151 (rho 152)
      (rvkRvkAcc rho 151) (rvkRvkAcc rho (151 + 1)) := by
  have hbrow151 : (1*(rho 152))*(1 + (-1)*(rho 152)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow151] using r151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1005 at r1005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1006 at r1006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1007 at r1007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1008 at r1008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1009 at r1009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1010 at r1010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1011 at r1011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1012 at r1012
  have h13_151 : rho 1006 = rvkAccX150 rho + rvkAccY150 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc854 rho
    rw [hLc] at r1005
    linear_combination -r1005
  have h14_151 : (481015789548022809936818797710406701423717712714693952242520185293036176048*rvkAccX150 rho + 5775556576858411646158082484809865716789842656243550876083649985645673455572*rho 1) * (6443546594132859595093629908190367994668625510347454729746931838690644669542*rvkAccY150 rho + 6443546594132859595093629908190367994668625510347454729746931838690644669542 + 3691096358027745336063657324176483550920035707413579978283300600227612312748*rho 1) = rho 1007 := by
    have hL := rvk_lc855 rho
    have hR := rvk_lc856 rho
    rw [hL, hR] at r1006
    linear_combination r1006
  have h15_151 : 2854113360462070250237665369511310630664090347204572612470743422269767583329*rvkAccX150 rho + 6443546594132859595093629908190367994668625510347454729746931838690644669542*rvkAccY150 rho + 6443546594132859595093629908190367994668625510347454729746931838690644669542 + 151421588100937353317181615817857404102268539262651372153589531488217465873*rho 1 = rho 1008 := by
    have hLc := rvk_lc857 rho
    rw [hLc] at r1007
    linear_combination r1007
  have h16_151 : rho 1009 * (1 + rho 1007) = rho 1008 := by
    linear_combination r1008
  have h17_151 : 5590348388966300174011159569270235900711808987949491215464490033647641655712*rvkAccX150 rho + 2000915155295510829155195030591178536707273824806609098188301617226764569499*rvkAccY150 rho + 2000915155295510829155195030591178536707273824806609098188301617226764569499 + 8293040161327433070931643322963689127273630795891412455781643924429191773168*rho 1 = rho 1010 := by
    have hLc := rvk_lc858 rho
    rw [hLc] at r1009
    linear_combination r1009
  have h18_151 : rho 1011 * (1 + (-1)*rho 1007) = rho 1010 + 853198205166559421082470338920132093956816522397963514282441805043003013830*rho 1006 := by
    linear_combination r1010
  have hSelX_151 : (1*rho 152) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX150 rho + rho 1009) = rho 1012 := by
    have hLc := rvk_lc859 rho
    rw [hLc] at r1011
    linear_combination r1011
  have hSelY_151 : (1*rho 152) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY150 rho + rho 1011) = rho 1013 := by
    have hLc := rvk_lc860 rho
    rw [hLc] at r1012
    linear_combination r1012
  have hr151 : RvkFixedBaseLadder.FixedStepRel 151 (rho 152) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX150 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY150 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX151 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY151 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX151_succ, rvkAccY151_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 151
      (6443546594132859595093629908190367994668625510347454729746931838690644669542 : EdwardsBridge.F) (2854113360462070250237665369511310630664090347204572612470743422269767583329 : EdwardsBridge.F) (853198205166559421082470338920132093956816522397963514282441805043003013830 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (481015789548022809936818797710406701423717712714693952242520185293036176048 : EdwardsBridge.F) (5775556576858411646158082484809865716789842656243550876083649985645673455572 : EdwardsBridge.F)
      (3691096358027745336063657324176483550920035707413579978283300600227612312748 : EdwardsBridge.F) (151421588100937353317181615817857404102268539262651372153589531488217465873 : EdwardsBridge.F) (5590348388966300174011159569270235900711808987949491215464490033647641655712 : EdwardsBridge.F)
      (2000915155295510829155195030591178536707273824806609098188301617226764569499 : EdwardsBridge.F) (8293040161327433070931643322963689127273630795891412455781643924429191773168 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX150 rho : F)
      (rvkAccY150 rho : F) (rho 152 : F)
      (rho 1006 : F) (rho 1007 : F) (rho 1008 : F)
      (rho 1010 : F) (rho 1009 : F) (rho 1011 : F)
      (rho 1012 : F) (rho 1013 : F) hacc
      (by rw [C_eq_L151]; simp only [L151])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_151 h14_151 h15_151 h16_151 h17_151 h18_151 hSelX_151 hSelY_151 hbrow151
  exact hr151

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

