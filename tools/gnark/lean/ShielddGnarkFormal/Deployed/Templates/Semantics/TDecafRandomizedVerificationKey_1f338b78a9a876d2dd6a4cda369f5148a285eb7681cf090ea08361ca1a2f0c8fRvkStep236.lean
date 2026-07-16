import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas86
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedSplitRung
import ShielddGnarkFormal.RvkFixedBaseLiteral
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem rvk_step236 (rho : Nat -> F)
    (r236 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow236 rho)
    (r1685 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1685 rho)
    (r1686 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1686 rho)
    (r1687 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1687 rho)
    (r1688 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1688 rho)
    (r1689 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1689 rho)
    (r1690 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1690 rho)
    (r1691 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1691 rho)
    (r1692 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1692 rho)
    (hacc : onCurve (rvkRvkAcc rho 236)) :
    RvkFixedBaseLadder.FixedStepRel 236 (rho 237)
      (rvkRvkAcc rho 236) (rvkRvkAcc rho (236 + 1)) := by
  have hbrow236 : (1*(rho 237))*(1 + (-1)*(rho 237)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow236] using r236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1685 at r1685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1686 at r1686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1687 at r1687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1688 at r1688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1689 at r1689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1690 at r1690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1691 at r1691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1692 at r1692
  have h13_236 : rho 1686 = rvkAccX235 rho + rvkAccY235 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1449 rho
    rw [hLc] at r1685
    linear_combination -r1685
  have h14_236 : (8091864853146751529371715125668286512450304465019627868544043469098480805528*rvkAccX235 rho + 5183033282837840927610938169579538547541169724730244457330125573237530254282*rho 1) * (1227669925703988626892556534377943857920740743066421402305718522958062673379*rvkAccY235 rho + 1227669925703988626892556534377943857920740743066421402305718522958062673379 + 2046459351451249908923190100053112941830275410540864722482341418481537589236*rho 1) = rho 1687 := by
    have hL := rvk_lc1450 rho
    have hR := rvk_lc1451 rho
    rw [hL, hR] at r1686
    linear_combination r1686
  have h15_236 : 5830782725061668019228127015056336578759086533684621883188846672974808587953*rvkAccX235 rho + 1227669925703988626892556534377943857920740743066421402305718522958062673379*rvkAccY235 rho + 1227669925703988626892556534377943857920740743066421402305718522958062673379 + 7937774789825435385526925645959203004775181424739587903520695280511070458125*rho 1 = rho 1688 := by
    have hLc := rvk_lc1452 rho
    rw [hLc] at r1687
    linear_combination r1687
  have h16_236 : rho 1689 * (1 + rho 1687) = rho 1688 := by
    linear_combination r1688
  have h17_236 : 2613679024366702405020697923725209952616812801469441944746386782942600651088*rvkAccX235 rho + 7216791823724381797356268404403602673455158592087642425629514932959346565662*rvkAccY235 rho + 7216791823724381797356268404403602673455158592087642425629514932959346565662 + 506686959602935038721899292822343526600717910414475924414538175406338780916*rho 1 = rho 1690 := by
    have hLc := rvk_lc1453 rho
    rw [hLc] at r1689
    linear_combination r1689
  have h18_236 : rho 1691 * (1 + (-1)*rho 1687) = rho 1690 + 7058452650765656646120683549434280436679827276751043285494565195932871261332*rho 1686 := by
    linear_combination r1690
  have hSelX_236 : (1*rho 237) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX235 rho + rho 1689) = rho 1692 := by
    have hLc := rvk_lc1454 rho
    rw [hLc] at r1691
    linear_combination r1691
  have hSelY_236 : (1*rho 237) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY235 rho + rho 1691) = rho 1693 := by
    have hLc := rvk_lc1455 rho
    rw [hLc] at r1692
    linear_combination r1692
  have hr236 : RvkFixedBaseLadder.FixedStepRel 236 (rho 237) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX235 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY235 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX236 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY236 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX236_succ, rvkAccY236_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 236
      (1227669925703988626892556534377943857920740743066421402305718522958062673379 : EdwardsBridge.F) (5830782725061668019228127015056336578759086533684621883188846672974808587953 : EdwardsBridge.F) (7058452650765656646120683549434280436679827276751043285494565195932871261332 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (8091864853146751529371715125668286512450304465019627868544043469098480805528 : EdwardsBridge.F) (5183033282837840927610938169579538547541169724730244457330125573237530254282 : EdwardsBridge.F)
      (2046459351451249908923190100053112941830275410540864722482341418481537589236 : EdwardsBridge.F) (7937774789825435385526925645959203004775181424739587903520695280511070458125 : EdwardsBridge.F) (2613679024366702405020697923725209952616812801469441944746386782942600651088 : EdwardsBridge.F)
      (7216791823724381797356268404403602673455158592087642425629514932959346565662 : EdwardsBridge.F) (506686959602935038721899292822343526600717910414475924414538175406338780916 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX235 rho : F)
      (rvkAccY235 rho : F) (rho 237 : F)
      (rho 1686 : F) (rho 1687 : F) (rho 1688 : F)
      (rho 1690 : F) (rho 1689 : F) (rho 1691 : F)
      (rho 1692 : F) (rho 1693 : F) hacc
      (by rw [C_eq_L236]; simp only [L236])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_236 h14_236 h15_236 h16_236 h17_236 h18_236 hSelX_236 hSelY_236 hbrow236
  exact hr236

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

