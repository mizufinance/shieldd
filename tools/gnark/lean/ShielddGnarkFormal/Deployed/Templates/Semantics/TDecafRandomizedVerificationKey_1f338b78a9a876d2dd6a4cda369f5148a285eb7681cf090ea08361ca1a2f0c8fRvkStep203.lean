import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas53
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

theorem rvk_step203 (rho : Nat -> F)
    (r203 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow203 rho)
    (r1421 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1421 rho)
    (r1422 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1422 rho)
    (r1423 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1423 rho)
    (r1424 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1424 rho)
    (r1425 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1425 rho)
    (r1426 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1426 rho)
    (r1427 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1427 rho)
    (r1428 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1428 rho)
    (hacc : onCurve (rvkRvkAcc rho 203)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 203 (rho 204)
      (rvkRvkAcc rho 203) (rvkRvkAcc rho (203 + 1)) := by
  have hbrow203 : (1*(rho 204))*(1 + (-1)*(rho 204)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow203] using r203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1421 at r1421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1422 at r1422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1423 at r1423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1424 at r1424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1425 at r1425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1426 at r1426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1427 at r1427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1428 at r1428
  have h13_203 : rho 1422 = rvkAccX202 rho + rvkAccY202 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1218 rho
    rw [hLc] at r1421
    linear_combination -r1421
  have h14_203 : (6296888571737790473502119962646382761543789952931972953997351135752063125416*rvkAccX202 rho + 3360235993349921557478930211628176150415994224663314196343587614236684632347*rho 1) * (3836254361821371855461032363456284343080856470191109187973679580433748081377*rvkAccY202 rho + 3836254361821371855461032363456284343080856470191109187973679580433748081377 + 4308558887452097310070062712423037990220006299339082313248399292937980109564*rho 1) = rho 1423 := by
    have hL := rvk_lc1219 rho
    have hR := rvk_lc1220 rho
    rw [hL, hR] at r1422
    linear_combination r1422
  have h15_203 : 1676441402343373609598989823996290220144226246842176830813373780612472756475*rvkAccX202 rho + 3836254361821371855461032363456284343080856470191109187973679580433748081377*rvkAccY202 rho + 3836254361821371855461032363456284343080856470191109187973679580433748081377 + 4687030443945371036925762910022222683330288459044630784273755169853930765606*rho 1 = rho 1424 := by
    have hLc := rvk_lc1221 rho
    rw [hLc] at r1423
    linear_combination r1423
  have h16_203 : rho 1425 * (1 + rho 1423) = rho 1424 := by
    linear_combination r1424
  have h17_203 : 6768020347084996814649835114785256311231673088311886997121859675304936482566*rvkAccX202 rho + 4608207387606998568787792575325262188295042864962954639961553875483661157664*rvkAccY202 rho + 4608207387606998568787792575325262188295042864962954639961553875483661157664 + 3757431305482999387323062028759323848045610876109433043661478286063478473435*rho 1 = rho 1426 := by
    have hLc := rvk_lc1222 rho
    rw [hLc] at r1425
    linear_combination r1425
  have h18_203 : rho 1427 * (1 + (-1)*rho 1423) = rho 1426 + 5512695764164745465060022187452574563225082717033286018787053361046220837852*rho 1422 := by
    linear_combination r1426
  have hSelX_203 : (1*rho 204) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX202 rho + rho 1425) = rho 1428 := by
    have hLc := rvk_lc1223 rho
    rw [hLc] at r1427
    linear_combination r1427
  have hSelY_203 : (1*rho 204) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY202 rho + rho 1427) = rho 1429 := by
    have hLc := rvk_lc1224 rho
    rw [hLc] at r1428
    linear_combination r1428
  have hr203 : RvkFixedBaseLadderChoiceFree.FixedStepRel 203 (rho 204) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX202 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY202 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX203 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY203 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX203_succ, rvkAccY203_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 203
      (3836254361821371855461032363456284343080856470191109187973679580433748081377 : EdwardsBridge.F) (1676441402343373609598989823996290220144226246842176830813373780612472756475 : EdwardsBridge.F) (5512695764164745465060022187452574563225082717033286018787053361046220837852 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (6296888571737790473502119962646382761543789952931972953997351135752063125416 : EdwardsBridge.F) (3360235993349921557478930211628176150415994224663314196343587614236684632347 : EdwardsBridge.F)
      (4308558887452097310070062712423037990220006299339082313248399292937980109564 : EdwardsBridge.F) (4687030443945371036925762910022222683330288459044630784273755169853930765606 : EdwardsBridge.F) (6768020347084996814649835114785256311231673088311886997121859675304936482566 : EdwardsBridge.F)
      (4608207387606998568787792575325262188295042864962954639961553875483661157664 : EdwardsBridge.F) (3757431305482999387323062028759323848045610876109433043661478286063478473435 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX202 rho : F)
      (rvkAccY202 rho : F) (rho 204 : F)
      (rho 1422 : F) (rho 1423 : F) (rho 1424 : F)
      (rho 1426 : F) (rho 1425 : F) (rho 1427 : F)
      (rho 1428 : F) (rho 1429 : F) hacc
      (by rw [C_eq_L203]; simp only [L203])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_203 h14_203 h15_203 h16_203 h17_203 h18_203 hSelX_203 hSelY_203 hbrow203
  exact hr203

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

