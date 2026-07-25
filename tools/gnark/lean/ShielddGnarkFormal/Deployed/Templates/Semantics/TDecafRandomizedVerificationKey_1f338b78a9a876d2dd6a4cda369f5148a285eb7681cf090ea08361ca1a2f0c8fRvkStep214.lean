import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas64
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

theorem rvk_step214 (rho : Nat -> F)
    (r214 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow214 rho)
    (r1509 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1509 rho)
    (r1510 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1510 rho)
    (r1511 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1511 rho)
    (r1512 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1512 rho)
    (r1513 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1513 rho)
    (r1514 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1514 rho)
    (r1515 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1515 rho)
    (r1516 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1516 rho)
    (hacc : onCurve (rvkRvkAcc rho 214)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 214 (rho 215)
      (rvkRvkAcc rho 214) (rvkRvkAcc rho (214 + 1)) := by
  have hbrow214 : (1*(rho 215))*(1 + (-1)*(rho 215)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow214] using r214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1509 at r1509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1510 at r1510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1511 at r1511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1512 at r1512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1513 at r1513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1514 at r1514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1515 at r1515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1516 at r1516
  have h13_214 : rho 1510 = rvkAccX213 rho + rvkAccY213 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1295 rho
    rw [hLc] at r1509
    linear_combination -r1509
  have h14_214 : (4850227687254138224780847103457061939368954313073617365555607718057132609262*rvkAccX213 rho + 3057446555327645110785219752153912666255960471678605788016472176197507522240*rho 1) * (2186001308626388964314917732041512555837490566337618110444932455301521128435*rvkAccY213 rho + 2186001308626388964314917732041512555837490566337618110444932455301521128435 + 2148799930174498616858606625598493469250246591036380349541407709988116596773*rho 1) = rho 1511 := by
    have hL := rvk_lc1296 rho
    have hR := rvk_lc1297 rho
    rw [hL, hR] at r1510
    linear_combination r1510
  have h15_214 : 5052629132374816118782657236505035300938635899681054933612883966421984649969*rvkAccX213 rho + 2186001308626388964314917732041512555837490566337618110444932455301521128435*rvkAccY213 rho + 2186001308626388964314917732041512555837490566337618110444932455301521128435 + 8103702602414735839222321401949651372095967062519278250663573791841899842943*rho 1 = rho 1512 := by
    have hLc := rvk_lc1298 rho
    rw [hLc] at r1511
    linear_combination r1511
  have h16_214 : rho 1513 * (1 + rho 1511) = rho 1512 := by
    linear_combination r1512
  have h17_214 : 3391832617053554305466167702276511230437263435473008894322349489495424589072*rvkAccX213 rho + 6258460440801981459933907206740033975538408768816445717490301000615888110606*rvkAccY213 rho + 6258460440801981459933907206740033975538408768816445717490301000615888110606 + 340759147013634585026503536831895159279932272634785577271659664075509396098*rho 1 = rho 1514 := by
    have hLc := rvk_lc1299 rho
    rw [hLc] at r1513
    linear_combination r1513
  have h18_214 : rho 1515 * (1 + (-1)*rho 1511) = rho 1514 + 7238630441001205083097574968546547856776126466018673044057816421723505778404*rho 1510 := by
    linear_combination r1514
  have hSelX_214 : (1*rho 215) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX213 rho + rho 1513) = rho 1516 := by
    have hLc := rvk_lc1300 rho
    rw [hLc] at r1515
    linear_combination r1515
  have hSelY_214 : (1*rho 215) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY213 rho + rho 1515) = rho 1517 := by
    have hLc := rvk_lc1301 rho
    rw [hLc] at r1516
    linear_combination r1516
  have hr214 : RvkFixedBaseLadderChoiceFree.FixedStepRel 214 (rho 215) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX213 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY213 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX214 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY214 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX214_succ, rvkAccY214_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 214
      (2186001308626388964314917732041512555837490566337618110444932455301521128435 : EdwardsBridge.F) (5052629132374816118782657236505035300938635899681054933612883966421984649969 : EdwardsBridge.F) (7238630441001205083097574968546547856776126466018673044057816421723505778404 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4850227687254138224780847103457061939368954313073617365555607718057132609262 : EdwardsBridge.F) (3057446555327645110785219752153912666255960471678605788016472176197507522240 : EdwardsBridge.F)
      (2148799930174498616858606625598493469250246591036380349541407709988116596773 : EdwardsBridge.F) (8103702602414735839222321401949651372095967062519278250663573791841899842943 : EdwardsBridge.F) (3391832617053554305466167702276511230437263435473008894322349489495424589072 : EdwardsBridge.F)
      (6258460440801981459933907206740033975538408768816445717490301000615888110606 : EdwardsBridge.F) (340759147013634585026503536831895159279932272634785577271659664075509396098 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX213 rho : F)
      (rvkAccY213 rho : F) (rho 215 : F)
      (rho 1510 : F) (rho 1511 : F) (rho 1512 : F)
      (rho 1514 : F) (rho 1513 : F) (rho 1515 : F)
      (rho 1516 : F) (rho 1517 : F) hacc
      (by rw [C_eq_L214]; simp only [L214])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_214 h14_214 h15_214 h16_214 h17_214 h18_214 hSelX_214 hSelY_214 hbrow214
  exact hr214

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

