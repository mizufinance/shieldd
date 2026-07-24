import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas4
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

theorem rvk_step154 (rho : Nat -> F)
    (r154 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow154 rho)
    (r1029 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1029 rho)
    (r1030 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1030 rho)
    (r1031 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1031 rho)
    (r1032 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1032 rho)
    (r1033 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1033 rho)
    (r1034 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1034 rho)
    (r1035 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1035 rho)
    (r1036 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1036 rho)
    (hacc : onCurve (rvkRvkAcc rho 154)) :
    RvkFixedBaseLadder.FixedStepRel 154 (rho 155)
      (rvkRvkAcc rho 154) (rvkRvkAcc rho (154 + 1)) := by
  have hbrow154 : (1*(rho 155))*(1 + (-1)*(rho 155)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow154] using r154
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1029 at r1029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1030 at r1030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1031 at r1031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1032 at r1032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1033 at r1033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1034 at r1034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1035 at r1035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1036 at r1036
  have h13_154 : rho 1030 = rvkAccX153 rho + rvkAccY153 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc875 rho
    rw [hLc] at r1029
    linear_combination -r1029
  have h14_154 : (2704772103181543561407909387543324526527234792527620381796325773278665770442*rvkAccX153 rho + 117308203899452786713752371936445821647930783023531061251907751794377827098*rho 1) * (8364593084925268505726894091365521251914098379187615535723699992665120113797*rvkAccY153 rho + 8364593084925268505726894091365521251914098379187615535723699992665120113797 + 1954415939981024927509846675227759571603074536204173585015379072837175217176*rho 1) = rho 1031 := by
    have hL := rvk_lc876 rho
    have hR := rvk_lc877 rho
    rw [hL, hR] at r1030
    linear_combination r1030
  have h15_154 : 67981414792936919478113110863389752161386566976572377441986735754815123306*rvkAccX153 rho + 8364593084925268505726894091365521251914098379187615535723699992665120113797*rvkAccY153 rho + 8364593084925268505726894091365521251914098379187615535723699992665120113797 + 4215815100355553602122231027378109650949234911219950204631683532813665932903*rho 1 = rho 1032 := by
    have hLc := rvk_lc878 rho
    rw [hLc] at r1031
    linear_combination r1031
  have h16_154 : rho 1033 * (1 + rho 1031) = rho 1032 := by
    linear_combination r1032
  have h17_154 : 8376480334635433504770711827918156779214512768177491450493246720162594115735*rvkAccX153 rho + 79868664503101918521930847416025279461800955966448292211533463252289125244*rvkAccY153 rho + 79868664503101918521930847416025279461800955966448292211533463252289125244 + 4228646649072816822126593911403436880426664423934113623303549923103743306138*rho 1 = rho 1034 := by
    have hLc := rvk_lc879 rho
    rw [hLc] at r1033
    linear_combination r1033
  have h18_154 : rho 1035 * (1 + (-1)*rho 1031) = rho 1034 + 8432574499718205425205007202228911004075484946164187913165686728419935237103*rho 1030 := by
    linear_combination r1034
  have hSelX_154 : (1*rho 155) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX153 rho + rho 1033) = rho 1036 := by
    have hLc := rvk_lc880 rho
    rw [hLc] at r1035
    linear_combination r1035
  have hSelY_154 : (1*rho 155) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY153 rho + rho 1035) = rho 1037 := by
    have hLc := rvk_lc881 rho
    rw [hLc] at r1036
    linear_combination r1036
  have hr154 : RvkFixedBaseLadder.FixedStepRel 154 (rho 155) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX153 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY153 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX154 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY154 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX154_succ, rvkAccY154_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 154
      (8364593084925268505726894091365521251914098379187615535723699992665120113797 : EdwardsBridge.F) (67981414792936919478113110863389752161386566976572377441986735754815123306 : EdwardsBridge.F) (8432574499718205425205007202228911004075484946164187913165686728419935237103 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (2704772103181543561407909387543324526527234792527620381796325773278665770442 : EdwardsBridge.F) (117308203899452786713752371936445821647930783023531061251907751794377827098 : EdwardsBridge.F)
      (1954415939981024927509846675227759571603074536204173585015379072837175217176 : EdwardsBridge.F) (4215815100355553602122231027378109650949234911219950204631683532813665932903 : EdwardsBridge.F) (8376480334635433504770711827918156779214512768177491450493246720162594115735 : EdwardsBridge.F)
      (79868664503101918521930847416025279461800955966448292211533463252289125244 : EdwardsBridge.F) (4228646649072816822126593911403436880426664423934113623303549923103743306138 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX153 rho : F)
      (rvkAccY153 rho : F) (rho 155 : F)
      (rho 1030 : F) (rho 1031 : F) (rho 1032 : F)
      (rho 1034 : F) (rho 1033 : F) (rho 1035 : F)
      (rho 1036 : F) (rho 1037 : F) hacc
      (by rw [C_eq_L154]; simp only [L154])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_154 h14_154 h15_154 h16_154 h17_154 h18_154 hSelX_154 hSelY_154 hbrow154
  exact hr154

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

