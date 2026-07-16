import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkPrefixLemmas0
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem rvk_prefix_step1 (rho : Nat -> F)
    (r1 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1 rho)
    (r252 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow252 rho)
    (r253 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow253 rho)
    (r254 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow254 rho)
    (r255 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow255 rho)
    (r256 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow256 rho)
    (hacc : onCurve (rvkRvkAcc rho 1)) :
    RvkFixedBaseLadder.FixedStepRel 1 (rho 2)
      (rvkRvkAcc rho 1) (rvkRvkAcc rho (1 + 1)) := by
  have hbrow1 : (1*(rho 2))*(1 + (-1)*(rho 2)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1] using r1
  have hinput : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc1 (rho 1 : F)) := by
    exact hacc
  have hr1 : RvkFixedBaseLadder.FixedStepRel 1 (rho 2)
      (Shieldd.GnarkFormal.RvkFixedGenInst0.acc1 (rho 1 : F)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX1 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY1 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc1, rvkAccX1, rvkAccY1, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung1 (rho 1 : F) (rho 2 : F) (rho 253 : F) (rho 254 : F) (rho 255 : F) (rho 256 : F) (rho 257 : F) hinput
        (by simpa using rvk_prefix_1_v2 rho r252)
        (by simpa using rvk_prefix_1_addX rho r253)
        (by simpa using rvk_prefix_1_addY rho r254)
        (by simpa using rvk_prefix_1_selX rho r255)
        (by simpa using rvk_prefix_1_selY rho r256)
        hbrow1
  exact hr1

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

