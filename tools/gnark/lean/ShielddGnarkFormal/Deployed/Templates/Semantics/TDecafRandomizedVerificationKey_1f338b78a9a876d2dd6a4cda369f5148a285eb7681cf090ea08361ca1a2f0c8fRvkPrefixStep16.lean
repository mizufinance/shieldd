import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkPrefixLemmas15
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

theorem rvk_prefix_step16 (rho : Nat -> F)
    (r16 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow16 rho)
    (r327 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow327 rho)
    (r328 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow328 rho)
    (r329 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow329 rho)
    (r330 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow330 rho)
    (r331 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow331 rho)
    (hacc : onCurve (rvkRvkAcc rho 16)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 16 (rho 17)
      (rvkRvkAcc rho 16) (rvkRvkAcc rho (16 + 1)) := by
  have hbrow16 : (1*(rho 17))*(1 + (-1)*(rho 17)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow16] using r16
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX15 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY15 rho : F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr16 : RvkFixedBaseLadderChoiceFree.FixedStepRel 16 (rho 17)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX15 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY15 rho : F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX16 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY16 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree.acc16, rvkAccX16_succ, rvkAccY16_succ, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree.rung16_wide (rho 1 : F) (rho 17 : F) (rvkAccX15 rho : F) (rvkAccY15 rho : F) (rho 328 : F) (rho 329 : F) (rho 330 : F) (rho 331 : F) (rho 332 : F) hinput
        (by simpa using rvk_prefix_16_v2 rho r327)
        (by simpa using rvk_prefix_16_addX rho r328)
        (by simpa using rvk_prefix_16_addY rho r329)
        (by simpa using rvk_prefix_16_selX rho r330)
        (by simpa using rvk_prefix_16_selY rho r331)
        hbrow16
  exact hr16

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

