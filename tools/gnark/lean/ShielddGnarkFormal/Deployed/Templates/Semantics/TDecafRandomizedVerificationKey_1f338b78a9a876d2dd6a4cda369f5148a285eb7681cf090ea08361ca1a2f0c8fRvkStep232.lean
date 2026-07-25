import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas82
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

theorem rvk_step232 (rho : Nat -> F)
    (r232 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow232 rho)
    (r1653 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1653 rho)
    (r1654 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1654 rho)
    (r1655 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1655 rho)
    (r1656 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1656 rho)
    (r1657 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1657 rho)
    (r1658 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1658 rho)
    (r1659 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1659 rho)
    (r1660 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1660 rho)
    (hacc : onCurve (rvkRvkAcc rho 232)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 232 (rho 233)
      (rvkRvkAcc rho 232) (rvkRvkAcc rho (232 + 1)) := by
  have hbrow232 : (1*(rho 233))*(1 + (-1)*(rho 233)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow232] using r232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1653 at r1653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1654 at r1654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1655 at r1655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1656 at r1656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1657 at r1657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1658 at r1658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1659 at r1659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1660 at r1660
  have h13_232 : rho 1654 = rvkAccX231 rho + rvkAccY231 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1421 rho
    rw [hLc] at r1653
    linear_combination -r1653
  have h14_232 : (1440741398750420175197138347651241738572644196148875266729604368789903737219*rvkAccX231 rho + 5933933965763915668833977120004965383452459708156491994369560357579044038721*rho 1) * (7460699961452232489258671600060964629412502616641694919143176647000166491204*rvkAccY231 rho + 7460699961452232489258671600060964629412502616641694919143176647000166491204 + 3040474903843643105099811186409463933730707835118493079665929304632651374772*rho 1) = rho 1655 := by
    have hL := rvk_lc1422 rho
    have hR := rvk_lc1423 rho
    rw [hL, hR] at r1654
    linear_combination r1654
  have h15_232 : 8145846500904674556913695137357523281750395003917607040671962891397590343033*rvkAccX231 rho + 7460699961452232489258671600060964629412502616641694919143176647000166491204*rvkAccY231 rho + 7460699961452232489258671600060964629412502616641694919143176647000166491204 + 4322665375609269576458565174851024104784535824264046778834650417895727334891*rho 1 = rho 1656 := by
    have hLc := rvk_lc1424 rho
    rw [hLc] at r1655
    linear_combination r1655
  have h16_232 : rho 1657 * (1 + rho 1655) = rho 1656 := by
    linear_combination r1656
  have h17_232 : 298615248523695867335129801424023249625504331236456787263270564519818896008*rvkAccX231 rho + 983761787976137934990153338720581901963396718512368908792056808917242747837*rvkAccY231 rho + 983761787976137934990153338720581901963396718512368908792056808917242747837 + 4121796373819100847790259763930522426591363510890017049100583038021681904150*rho 1 = rho 1658 := by
    have hLc := rvk_lc1425 rho
    rw [hLc] at r1657
    linear_combination r1657
  have h18_232 : rho 1659 * (1 + (-1)*rho 1655) = rho 1658 + 7162084712928536621923541798636941379786998285405238131879906082480347595196*rho 1654 := by
    linear_combination r1658
  have hSelX_232 : (1*rho 233) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX231 rho + rho 1657) = rho 1660 := by
    have hLc := rvk_lc1426 rho
    rw [hLc] at r1659
    linear_combination r1659
  have hSelY_232 : (1*rho 233) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY231 rho + rho 1659) = rho 1661 := by
    have hLc := rvk_lc1427 rho
    rw [hLc] at r1660
    linear_combination r1660
  have hr232 : RvkFixedBaseLadderChoiceFree.FixedStepRel 232 (rho 233) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX231 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY231 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX232 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY232 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX232_succ, rvkAccY232_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 232
      (7460699961452232489258671600060964629412502616641694919143176647000166491204 : EdwardsBridge.F) (8145846500904674556913695137357523281750395003917607040671962891397590343033 : EdwardsBridge.F) (7162084712928536621923541798636941379786998285405238131879906082480347595196 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (1440741398750420175197138347651241738572644196148875266729604368789903737219 : EdwardsBridge.F) (5933933965763915668833977120004965383452459708156491994369560357579044038721 : EdwardsBridge.F)
      (3040474903843643105099811186409463933730707835118493079665929304632651374772 : EdwardsBridge.F) (4322665375609269576458565174851024104784535824264046778834650417895727334891 : EdwardsBridge.F) (298615248523695867335129801424023249625504331236456787263270564519818896008 : EdwardsBridge.F)
      (983761787976137934990153338720581901963396718512368908792056808917242747837 : EdwardsBridge.F) (4121796373819100847790259763930522426591363510890017049100583038021681904150 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX231 rho : F)
      (rvkAccY231 rho : F) (rho 233 : F)
      (rho 1654 : F) (rho 1655 : F) (rho 1656 : F)
      (rho 1658 : F) (rho 1657 : F) (rho 1659 : F)
      (rho 1660 : F) (rho 1661 : F) hacc
      (by rw [C_eq_L232]; simp only [L232])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_232 h14_232 h15_232 h16_232 h17_232 h18_232 hSelX_232 hSelY_232 hbrow232
  exact hr232

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

