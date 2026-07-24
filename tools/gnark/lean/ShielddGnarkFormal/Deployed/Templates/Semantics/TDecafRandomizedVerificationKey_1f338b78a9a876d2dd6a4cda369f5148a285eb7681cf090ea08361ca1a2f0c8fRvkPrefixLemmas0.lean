import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

theorem rvk_prefix_1_v2 (rho : Nat -> F)
    (r252 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow252 rho) :
    (7666314259614842119075217875095661764022741596306956002104179288686713480750*rho 1)*(2819826005777211937120848652816998614177620600541178042063871942550730439065 + 890989236521567965256199269370229413142501078177866273656858537885493191408*rho 1) = rho 253 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow252 at r252
  simp only [one_mul] at r252 ⊢
  ring_nf at r252 ⊢
  exact r252

theorem rvk_prefix_1_addX (rho : Nat -> F)
    (r253 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow253 rho) :
    rho 254*(1 + rho 253) = 2819826005777211937120848652816998614177620600541178042063871942550730439065 + 432310032815488429380005658968422224823070211344329836845468487922671009693*rho 1 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow253 at r253
  simp only [one_mul] at r253 ⊢
  ring_nf at r253 ⊢
  exact r253

theorem rvk_prefix_1_addY (rho : Nat -> F)
    (r254 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow254 rho) :
    rho 255*(1 + (-1)*rho 253) = 3389385942610507627059167016978655778640740163498436687682704594713126572823 + 7357496755043946632708945428288702189108099325839934949187639837550109708737*rho 1 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow254 at r254
  simp only [one_mul] at r254 ⊢
  ring_nf at r254 ⊢
  exact r254

theorem rvk_prefix_1_selX (rho : Nat -> F)
    (r255 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow255 rho) :
    (1*rho 2)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + rho 254) = rho 256 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow255 at r255
  simp only [one_mul] at r255 ⊢
  ring_nf at r255 ⊢
  exact r255

theorem rvk_prefix_1_selY (rho : Nat -> F)
    (r256 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow256 rho) :
    (1*rho 2)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + rho 255) = rho 257 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow256 at r256
  simp only [one_mul] at r256 ⊢
  ring_nf at r256 ⊢
  exact r256


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

