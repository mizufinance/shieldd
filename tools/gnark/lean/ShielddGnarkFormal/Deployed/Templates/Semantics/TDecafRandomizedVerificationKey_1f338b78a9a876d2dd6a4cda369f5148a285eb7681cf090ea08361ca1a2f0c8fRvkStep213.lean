import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas63
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

theorem rvk_step213 (rho : Nat -> F)
    (r213 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow213 rho)
    (r1501 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1501 rho)
    (r1502 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1502 rho)
    (r1503 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1503 rho)
    (r1504 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1504 rho)
    (r1505 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1505 rho)
    (r1506 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1506 rho)
    (r1507 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1507 rho)
    (r1508 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1508 rho)
    (hacc : onCurve (rvkRvkAcc rho 213)) :
    RvkFixedBaseLadder.FixedStepRel 213 (rho 214)
      (rvkRvkAcc rho 213) (rvkRvkAcc rho (213 + 1)) := by
  have hbrow213 : (1*(rho 214))*(1 + (-1)*(rho 214)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow213] using r213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1501 at r1501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1502 at r1502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1503 at r1503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1504 at r1504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1505 at r1505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1506 at r1506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1507 at r1507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1508 at r1508
  have h13_213 : rho 1502 = rvkAccX212 rho + rvkAccY212 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1288 rho
    rw [hLc] at r1501
    linear_combination -r1501
  have h14_213 : (58918325820461944259557627262580109539818437254177415012051304305529098982*rvkAccX212 rho + 7893342063542007363849646815109681961881602631397189320761681794130772690789*rho 1) * (2585872893106133656212238141247348463124237904139477394990300382205626000743*rvkAccY212 rho + 2585872893106133656212238141247348463124237904139477394990300382205626000743 + 4088562414217022427536605253412035611528252553393612053114188351806014648827*rho 1) = rho 1503 := by
    have hL := rvk_lc1289 rho
    have hR := rvk_lc1290 rho
    rw [hL, hR] at r1502
    linear_combination r1502
  have h15_213 : 5420016633719771835340195668296816055758824438696121794035560980578669991261*rvkAccX212 rho + 2585872893106133656212238141247348463124237904139477394990300382205626000743*rvkAccY212 rho + 2585872893106133656212238141247348463124237904139477394990300382205626000743 + 1639737650170303177386863504158044672748119447038525397113381314717157604819*rho 1 = rho 1504 := by
    have hLc := rvk_lc1291 rho
    rw [hLc] at r1503
    linear_combination r1503
  have h16_213 : rho 1505 * (1 + rho 1503) = rho 1504 := by
    linear_combination r1504
  have h17_213 : 3024445115708598588908629270484730475617074896457942033899672475338739247780*rvkAccX212 rho + 5858588856322236768036586797534198068251661431014586432944933073711783238298*rvkAccY212 rho + 5858588856322236768036586797534198068251661431014586432944933073711783238298 + 6804724099258067246861961434623501858627779888115538430821852141200251634222*rho 1 = rho 1506 := by
    have hLc := rvk_lc1292 rho
    rw [hLc] at r1505
    linear_combination r1505
  have h18_213 : rho 1507 * (1 + (-1)*rho 1503) = rho 1506 + 8005889526825905491552433809544164518883062342835599189025861362784295992004*rho 1502 := by
    linear_combination r1506
  have hSelX_213 : (1*rho 214) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX212 rho + rho 1505) = rho 1508 := by
    have hLc := rvk_lc1293 rho
    rw [hLc] at r1507
    linear_combination r1507
  have hSelY_213 : (1*rho 214) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY212 rho + rho 1507) = rho 1509 := by
    have hLc := rvk_lc1294 rho
    rw [hLc] at r1508
    linear_combination r1508
  have hr213 : RvkFixedBaseLadder.FixedStepRel 213 (rho 214) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX212 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY212 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX213 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY213 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX213_succ, rvkAccY213_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 213
      (2585872893106133656212238141247348463124237904139477394990300382205626000743 : EdwardsBridge.F) (5420016633719771835340195668296816055758824438696121794035560980578669991261 : EdwardsBridge.F) (8005889526825905491552433809544164518883062342835599189025861362784295992004 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (58918325820461944259557627262580109539818437254177415012051304305529098982 : EdwardsBridge.F) (7893342063542007363849646815109681961881602631397189320761681794130772690789 : EdwardsBridge.F)
      (4088562414217022427536605253412035611528252553393612053114188351806014648827 : EdwardsBridge.F) (1639737650170303177386863504158044672748119447038525397113381314717157604819 : EdwardsBridge.F) (3024445115708598588908629270484730475617074896457942033899672475338739247780 : EdwardsBridge.F)
      (5858588856322236768036586797534198068251661431014586432944933073711783238298 : EdwardsBridge.F) (6804724099258067246861961434623501858627779888115538430821852141200251634222 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX212 rho : F)
      (rvkAccY212 rho : F) (rho 214 : F)
      (rho 1502 : F) (rho 1503 : F) (rho 1504 : F)
      (rho 1506 : F) (rho 1505 : F) (rho 1507 : F)
      (rho 1508 : F) (rho 1509 : F) hacc
      (by rw [C_eq_L213]; simp only [L213])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_213 h14_213 h15_213 h16_213 h17_213 h18_213 hSelX_213 hSelY_213 hbrow213
  exact hr213

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

