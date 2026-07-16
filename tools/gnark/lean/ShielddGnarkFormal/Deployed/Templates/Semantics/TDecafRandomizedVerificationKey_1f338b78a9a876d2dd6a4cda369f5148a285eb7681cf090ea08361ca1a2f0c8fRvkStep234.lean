import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas84
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

theorem rvk_step234 (rho : Nat -> F)
    (r234 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow234 rho)
    (r1669 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1669 rho)
    (r1670 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1670 rho)
    (r1671 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1671 rho)
    (r1672 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1672 rho)
    (r1673 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1673 rho)
    (r1674 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1674 rho)
    (r1675 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1675 rho)
    (r1676 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1676 rho)
    (hacc : onCurve (rvkRvkAcc rho 234)) :
    RvkFixedBaseLadder.FixedStepRel 234 (rho 235)
      (rvkRvkAcc rho 234) (rvkRvkAcc rho (234 + 1)) := by
  have hbrow234 : (1*(rho 235))*(1 + (-1)*(rho 235)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow234] using r234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1669 at r1669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1670 at r1670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1671 at r1671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1672 at r1672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1673 at r1673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1674 at r1674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1675 at r1675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1676 at r1676
  have h13_234 : rho 1670 = rvkAccX233 rho + rvkAccY233 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1435 rho
    rw [hLc] at r1669
    linear_combination -r1669
  have h14_234 : (5087188169684227801562250753370009099099816197018021756764974898315399945223*rvkAccX233 rho + 7152477452365709395280634271259004537953723793054248778598096973805561633905*rho 1) * (6492092171468074665040082486270868720785634859603612924010367110189092078530*rvkAccY233 rho + 6492092171468074665040082486270868720785634859603612924010367110189092078530 + 3623911247177762772873015558312128719028580682713025867927504034680464909656*rho 1) = rho 1671 := by
    have hL := rvk_lc1436 rho
    have hR := rvk_lc1437 rho
    rw [hL, hR] at r1670
    linear_combination r1670
  have h15_234 : 1049904119233804414728524198211337291746131104561334643241468891382768574838*rvkAccX233 rho + 6492092171468074665040082486270868720785634859603612924010367110189092078530*rvkAccY233 rho + 6492092171468074665040082486270868720785634859603612924010367110189092078530 + 8316714720528696662738890725987300544313821599026025984463061742725224348499*rho 1 = rho 1672 := by
    have hLc := rvk_lc1438 rho
    rw [hLc] at r1671
    linear_combination r1671
  have h16_234 : rho 1673 * (1 + rho 1671) = rho 1672 := by
    linear_combination r1672
  have h17_234 : 7394557630194566009520300740570209239629768230592729184693764564534640664203*rvkAccX233 rho + 1952369577960295759208742452510677810590264475550450903924866345728317160511*rvkAccY233 rho + 1952369577960295759208742452510677810590264475550450903924866345728317160511 + 127747028899673761509934212794245987062077736128037843472171713192184890542*rho 1 = rho 1674 := by
    have hLc := rvk_lc1439 rho
    rw [hLc] at r1673
    linear_combination r1673
  have h18_234 : rho 1675 * (1 + (-1)*rho 1671) = rho 1674 + 7541996290701879079768606684482206012531765964164947567251836001571860653368*rho 1670 := by
    linear_combination r1674
  have hSelX_234 : (1*rho 235) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX233 rho + rho 1673) = rho 1676 := by
    have hLc := rvk_lc1440 rho
    rw [hLc] at r1675
    linear_combination r1675
  have hSelY_234 : (1*rho 235) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY233 rho + rho 1675) = rho 1677 := by
    have hLc := rvk_lc1441 rho
    rw [hLc] at r1676
    linear_combination r1676
  have hr234 : RvkFixedBaseLadder.FixedStepRel 234 (rho 235) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX233 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY233 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX234 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY234 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX234_succ, rvkAccY234_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 234
      (6492092171468074665040082486270868720785634859603612924010367110189092078530 : EdwardsBridge.F) (1049904119233804414728524198211337291746131104561334643241468891382768574838 : EdwardsBridge.F) (7541996290701879079768606684482206012531765964164947567251836001571860653368 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (5087188169684227801562250753370009099099816197018021756764974898315399945223 : EdwardsBridge.F) (7152477452365709395280634271259004537953723793054248778598096973805561633905 : EdwardsBridge.F)
      (3623911247177762772873015558312128719028580682713025867927504034680464909656 : EdwardsBridge.F) (8316714720528696662738890725987300544313821599026025984463061742725224348499 : EdwardsBridge.F) (7394557630194566009520300740570209239629768230592729184693764564534640664203 : EdwardsBridge.F)
      (1952369577960295759208742452510677810590264475550450903924866345728317160511 : EdwardsBridge.F) (127747028899673761509934212794245987062077736128037843472171713192184890542 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX233 rho : F)
      (rvkAccY233 rho : F) (rho 235 : F)
      (rho 1670 : F) (rho 1671 : F) (rho 1672 : F)
      (rho 1674 : F) (rho 1673 : F) (rho 1675 : F)
      (rho 1676 : F) (rho 1677 : F) hacc
      (by rw [C_eq_L234]; simp only [L234])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_234 h14_234 h15_234 h16_234 h17_234 h18_234 hSelX_234 hSelY_234 hbrow234
  exact hr234

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

