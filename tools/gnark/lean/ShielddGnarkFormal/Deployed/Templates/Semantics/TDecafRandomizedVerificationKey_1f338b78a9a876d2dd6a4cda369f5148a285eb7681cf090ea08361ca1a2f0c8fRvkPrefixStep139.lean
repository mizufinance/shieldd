import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkPrefixLemmas138
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

theorem rvk_prefix_step139 (rho : Nat -> F)
    (r139 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow139 rho)
    (r942 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow942 rho)
    (r943 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow943 rho)
    (r944 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow944 rho)
    (r945 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow945 rho)
    (r946 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow946 rho)
    (hacc : onCurve (rvkRvkAcc rho 139)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 139 (rho 140)
      (rvkRvkAcc rho 139) (rvkRvkAcc rho (139 + 1)) := by
  have hbrow139 : (1*(rho 140))*(1 + (-1)*(rho 140)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow139] using r139
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX138 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY138 rho : F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr139 : RvkFixedBaseLadderChoiceFree.FixedStepRel 139 (rho 140)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX138 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY138 rho : F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX139 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY139 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree.acc139, rvkAccX139_succ, rvkAccY139_succ, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree.rung139_wide (rho 1 : F) (rho 140 : F) (rvkAccX138 rho : F) (rvkAccY138 rho : F) (rho 943 : F) (rho 944 : F) (rho 945 : F) (rho 946 : F) (rho 947 : F) hinput
        (by simpa using rvk_prefix_139_v2 rho r942)
        (by simpa using rvk_prefix_139_addX rho r943)
        (by simpa using rvk_prefix_139_addY rho r944)
        (by simpa using rvk_prefix_139_selX rho r945)
        (by simpa using rvk_prefix_139_selY rho r946)
        hbrow139
  exact hr139

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

