import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas0
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_step9 (rho : Nat -> Seg15.F)
    (r9 : Seg15.relationRow9 rho)
    (r292 : Seg15.relationRow292 rho)
    (r293 : Seg15.relationRow293 rho)
    (r294 : Seg15.relationRow294 rho)
    (r295 : Seg15.relationRow295 rho)
    (r296 : Seg15.relationRow296 rho)
    (hacc : onCurve (seg15RvkAcc rho 9)) :
    RvkFixedBaseLadder.FixedStepRel 9 (rho 16145)
      (seg15RvkAcc rho 9) (seg15RvkAcc rho (9 + 1)) := by
  have hbrow9 : (1*(rho 16145))*(1 + (-1)*(rho 16145)) = 0 := by
    simpa [Seg15.relationRow9] using r9
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX8 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY8 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr9 : RvkFixedBaseLadder.FixedStepRel 9 (rho 16145)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX8 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY8 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX9 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY9 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc9, seg15AccX9, seg15AccY9, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung9_wide (rho 16136 : Seg15.F) (rho 16145 : Seg15.F) (seg15AccX8 rho : Seg15.F) (seg15AccY8 rho : Seg15.F) (rho 16427 : Seg15.F) (rho 16428 : Seg15.F) (rho 16429 : Seg15.F) (rho 16430 : Seg15.F) (rho 16431 : Seg15.F) hinput
        (by simpa using seg15_prefix_9_v2 rho r292)
        (by simpa using seg15_prefix_9_addX rho r293)
        (by simpa using seg15_prefix_9_addY rho r294)
        (by simpa using seg15_prefix_9_selX rho r295)
        (by simpa using seg15_prefix_9_selY rho r296)
        hbrow9
  exact hr9

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

