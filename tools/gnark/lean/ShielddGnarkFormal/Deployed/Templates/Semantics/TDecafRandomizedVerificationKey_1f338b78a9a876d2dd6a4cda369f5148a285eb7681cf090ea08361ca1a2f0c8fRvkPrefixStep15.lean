import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkPrefixLemmas14
import ShielddGnarkFormal.RvkFixedGenInst0ChoiceFree
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

theorem rvk_prefix_step15 (rho : Nat -> F)
    (r15 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow15 rho)
    (r322 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow322 rho)
    (r323 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow323 rho)
    (r324 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow324 rho)
    (r325 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow325 rho)
    (r326 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow326 rho)
    (hacc : onCurve (rvkRvkAcc rho 15)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 15 (rho 16)
      (rvkRvkAcc rho 15) (rvkRvkAcc rho (15 + 1)) := by
  have hbrow15 : (1*(rho 16))*(1 + (-1)*(rho 16)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow15] using r15
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX14 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY14 rho : F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr15 : RvkFixedBaseLadderChoiceFree.FixedStepRel 15 (rho 16)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX14 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY14 rho : F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX15 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY15 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree.acc15, rvkAccX15_succ, rvkAccY15_succ, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree.rung15_wide (rho 1 : F) (rho 16 : F) (rvkAccX14 rho : F) (rvkAccY14 rho : F) (rho 323 : F) (rho 324 : F) (rho 325 : F) (rho 326 : F) (rho 327 : F) hinput
        (by simpa using rvk_prefix_15_v2 rho r322)
        (by simpa using rvk_prefix_15_addX rho r323)
        (by simpa using rvk_prefix_15_addY rho r324)
        (by simpa using rvk_prefix_15_selX rho r325)
        (by simpa using rvk_prefix_15_selY rho r326)
        hbrow15
  exact hr15

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

