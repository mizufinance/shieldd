import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas42
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

theorem rvk_step192 (rho : Nat -> F)
    (r192 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow192 rho)
    (r1333 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1333 rho)
    (r1334 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1334 rho)
    (r1335 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1335 rho)
    (r1336 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1336 rho)
    (r1337 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1337 rho)
    (r1338 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1338 rho)
    (r1339 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1339 rho)
    (r1340 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1340 rho)
    (hacc : onCurve (rvkRvkAcc rho 192)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 192 (rho 193)
      (rvkRvkAcc rho 192) (rvkRvkAcc rho (192 + 1)) := by
  have hbrow192 : (1*(rho 193))*(1 + (-1)*(rho 193)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow192] using r192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1333 at r1333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1334 at r1334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1335 at r1335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1336 at r1336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1337 at r1337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1338 at r1338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1339 at r1339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1340 at r1340
  have h13_192 : rho 1334 = rvkAccX191 rho + rvkAccY191 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1141 rho
    rw [hLc] at r1333
    linear_combination -r1333
  have h14_192 : (81458509301691225636504616085288741999117689499860004584895221008205595528*rvkAccX191 rho + 1051624727723807996568357550045837339349544629352932548414659430336634672760*rho 1) * (2369092448024510723063068044567708238164786236827597410203581572440825732158*rvkAccY191 rho + 2369092448024510723063068044567708238164786236827597410203581572440825732158 + 3661380297082212951476710236660966730558731200824120496702917408345797680542*rho 1) = rho 1335 := by
    have hL := rvk_lc1142 rho
    have hR := rvk_lc1143 rho
    rw [hL, hR] at r1334
    linear_combination r1334
  have h15_192 : 6577259170775987189501198803564734947722439673388617029836540621315680948381*rvkAccX191 rho + 2369092448024510723063068044567708238164786236827597410203581572440825732158*rvkAccY191 rho + 2369092448024510723063068044567708238164786236827597410203581572440825732158 + 8424840888195641290078685097049513942344193634366615596123656391567777812286*rho 1 = rho 1336 := by
    have hLc := rvk_lc1144 rho
    rw [hLc] at r1335
    linear_combination r1335
  have h16_192 : rho 1337 * (1 + rho 1335) = rho 1336 := by
    linear_combination r1336
  have h17_192 : 1867202578652383234747626135216811583653459661765446798098692834601728290660*rvkAccX191 rho + 6075369301403859701185756894213838293211113098326466417731651883476583506883*rvkAccY191 rho + 6075369301403859701185756894213838293211113098326466417731651883476583506883 + 19620861232729134170139841732032589031705700787448231811577064349631426755*rho 1 = rho 1338 := by
    have hLc := rvk_lc1145 rho
    rw [hLc] at r1337
    linear_combination r1337
  have h18_192 : rho 1339 * (1 + (-1)*rho 1335) = rho 1338 + 501889869372127488315441909350896654511326575062150612104888737839097441498*rho 1334 := by
    linear_combination r1338
  have hSelX_192 : (1*rho 193) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX191 rho + rho 1337) = rho 1340 := by
    have hLc := rvk_lc1146 rho
    rw [hLc] at r1339
    linear_combination r1339
  have hSelY_192 : (1*rho 193) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY191 rho + rho 1339) = rho 1341 := by
    have hLc := rvk_lc1147 rho
    rw [hLc] at r1340
    linear_combination r1340
  have hr192 : RvkFixedBaseLadderChoiceFree.FixedStepRel 192 (rho 193) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX191 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY191 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX192 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY192 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX192_succ, rvkAccY192_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 192
      (2369092448024510723063068044567708238164786236827597410203581572440825732158 : EdwardsBridge.F) (6577259170775987189501198803564734947722439673388617029836540621315680948381 : EdwardsBridge.F) (501889869372127488315441909350896654511326575062150612104888737839097441498 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (81458509301691225636504616085288741999117689499860004584895221008205595528 : EdwardsBridge.F) (1051624727723807996568357550045837339349544629352932548414659430336634672760 : EdwardsBridge.F)
      (3661380297082212951476710236660966730558731200824120496702917408345797680542 : EdwardsBridge.F) (8424840888195641290078685097049513942344193634366615596123656391567777812286 : EdwardsBridge.F) (1867202578652383234747626135216811583653459661765446798098692834601728290660 : EdwardsBridge.F)
      (6075369301403859701185756894213838293211113098326466417731651883476583506883 : EdwardsBridge.F) (19620861232729134170139841732032589031705700787448231811577064349631426755 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX191 rho : F)
      (rvkAccY191 rho : F) (rho 193 : F)
      (rho 1334 : F) (rho 1335 : F) (rho 1336 : F)
      (rho 1338 : F) (rho 1337 : F) (rho 1339 : F)
      (rho 1340 : F) (rho 1341 : F) hacc
      (by rw [C_eq_L192]; simp only [L192])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_192 h14_192 h15_192 h16_192 h17_192 h18_192 hSelX_192 hSelY_192 hbrow192
  exact hr192

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

