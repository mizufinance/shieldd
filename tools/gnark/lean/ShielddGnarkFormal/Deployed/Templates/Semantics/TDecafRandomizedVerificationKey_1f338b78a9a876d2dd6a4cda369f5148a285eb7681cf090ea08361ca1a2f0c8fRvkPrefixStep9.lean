import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkPrefixLemmas8
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

theorem rvk_prefix_step9 (rho : Nat -> F)
    (r9 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow9 rho)
    (r292 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow292 rho)
    (r293 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow293 rho)
    (r294 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow294 rho)
    (r295 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow295 rho)
    (r296 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow296 rho)
    (hacc : onCurve (rvkRvkAcc rho 9)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 9 (rho 10)
      (rvkRvkAcc rho 9) (rvkRvkAcc rho (9 + 1)) := by
  have hbrow9 : (1*(rho 10))*(1 + (-1)*(rho 10)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow9] using r9
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX8 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY8 rho : F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr9 : RvkFixedBaseLadderChoiceFree.FixedStepRel 9 (rho 10)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX8 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY8 rho : F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX9 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY9 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree.acc9, rvkAccX9_succ, rvkAccY9_succ, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree.rung9_wide (rho 1 : F) (rho 10 : F) (rvkAccX8 rho : F) (rvkAccY8 rho : F) (rho 293 : F) (rho 294 : F) (rho 295 : F) (rho 296 : F) (rho 297 : F) hinput
        (by simpa using rvk_prefix_9_v2 rho r292)
        (by simpa using rvk_prefix_9_addX rho r293)
        (by simpa using rvk_prefix_9_addY rho r294)
        (by simpa using rvk_prefix_9_selX rho r295)
        (by simpa using rvk_prefix_9_selY rho r296)
        hbrow9
  exact hr9

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

