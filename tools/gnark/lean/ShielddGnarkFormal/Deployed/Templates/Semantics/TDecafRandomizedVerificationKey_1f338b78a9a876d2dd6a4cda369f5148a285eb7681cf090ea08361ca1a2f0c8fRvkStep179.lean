import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas29
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

theorem rvk_step179 (rho : Nat -> F)
    (r179 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow179 rho)
    (r1229 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1229 rho)
    (r1230 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1230 rho)
    (r1231 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1231 rho)
    (r1232 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1232 rho)
    (r1233 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1233 rho)
    (r1234 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1234 rho)
    (r1235 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1235 rho)
    (r1236 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1236 rho)
    (hacc : onCurve (rvkRvkAcc rho 179)) :
    RvkFixedBaseLadder.FixedStepRel 179 (rho 180)
      (rvkRvkAcc rho 179) (rvkRvkAcc rho (179 + 1)) := by
  have hbrow179 : (1*(rho 180))*(1 + (-1)*(rho 180)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow179] using r179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1229 at r1229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1230 at r1230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1231 at r1231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1232 at r1232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1233 at r1233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1234 at r1234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1235 at r1235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1236 at r1236
  have h13_179 : rho 1230 = rvkAccX178 rho + rvkAccY178 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1050 rho
    rw [hLc] at r1229
    linear_combination -r1229
  have h14_179 : (2060143958823073355734724205187868322756779499498343359721048205222341509940*rvkAccX178 rho + 6848937982180812692729044196031415334310571292722222488585731250665080063305*rho 1) * (714737645503320255440318207074993637899517394382989883705174528398297173222*rvkAccY178 rho + 714737645503320255440318207074993637899517394382989883705174528398297173222 + 7035268714477096427834258837756375834408889943773983329074787985288032695718*rho 1) = rho 1231 := by
    have hL := rvk_lc1051 rho
    have hR := rvk_lc1052 rho
    rw [hL, hR] at r1230
    linear_combination r1230
  have h15_179 : 5398317041411786283541944945710809076600337105488909498544408093870155439291*rvkAccX178 rho + 714737645503320255440318207074993637899517394382989883705174528398297173222*rvkAccY178 rho + 714737645503320255440318207074993637899517394382989883705174528398297173222 + 7674853691918953186993961297285744925599891472972211986889358974761662085511*rho 1 = rho 1232 := by
    have hLc := rvk_lc1053 rho
    rw [hLc] at r1231
    linear_combination r1231
  have h16_179 : rho 1233 * (1 + rho 1231) = rho 1232 := by
    linear_combination r1232
  have h17_179 : 3046144708016584140706879993070737454775562229665154329390825362047253799750*rvkAccX178 rho + 7729724103925050168808506731706552893476381940771073944230058927519112065819*rvkAccY178 rho + 7729724103925050168808506731706552893476381940771073944230058927519112065819 + 769608057509417237254863641495801605776007862181851841045874481155747153530*rho 1 = rho 1234 := by
    have hLc := rvk_lc1054 rho
    rw [hLc] at r1233
    linear_combination r1233
  have h18_179 : rho 1235 * (1 + (-1)*rho 1231) = rho 1234 + 6113054686915106538982263152785802714499854499871899382249582622268452612513*rho 1230 := by
    linear_combination r1234
  have hSelX_179 : (1*rho 180) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX178 rho + rho 1233) = rho 1236 := by
    have hLc := rvk_lc1055 rho
    rw [hLc] at r1235
    linear_combination r1235
  have hSelY_179 : (1*rho 180) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY178 rho + rho 1235) = rho 1237 := by
    have hLc := rvk_lc1056 rho
    rw [hLc] at r1236
    linear_combination r1236
  have hr179 : RvkFixedBaseLadder.FixedStepRel 179 (rho 180) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX178 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY178 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX179 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY179 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX179_succ, rvkAccY179_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 179
      (714737645503320255440318207074993637899517394382989883705174528398297173222 : EdwardsBridge.F) (5398317041411786283541944945710809076600337105488909498544408093870155439291 : EdwardsBridge.F) (6113054686915106538982263152785802714499854499871899382249582622268452612513 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (2060143958823073355734724205187868322756779499498343359721048205222341509940 : EdwardsBridge.F) (6848937982180812692729044196031415334310571292722222488585731250665080063305 : EdwardsBridge.F)
      (7035268714477096427834258837756375834408889943773983329074787985288032695718 : EdwardsBridge.F) (7674853691918953186993961297285744925599891472972211986889358974761662085511 : EdwardsBridge.F) (3046144708016584140706879993070737454775562229665154329390825362047253799750 : EdwardsBridge.F)
      (7729724103925050168808506731706552893476381940771073944230058927519112065819 : EdwardsBridge.F) (769608057509417237254863641495801605776007862181851841045874481155747153530 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX178 rho : F)
      (rvkAccY178 rho : F) (rho 180 : F)
      (rho 1230 : F) (rho 1231 : F) (rho 1232 : F)
      (rho 1234 : F) (rho 1233 : F) (rho 1235 : F)
      (rho 1236 : F) (rho 1237 : F) hacc
      (by rw [C_eq_L179]; simp only [L179])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_179 h14_179 h15_179 h16_179 h17_179 h18_179 hSelX_179 hSelY_179 hbrow179
  exact hr179

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

