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

theorem seg15_prefix_step4 (rho : Nat -> Seg15.F)
    (r4 : Seg15.relationRow4 rho)
    (r267 : Seg15.relationRow267 rho)
    (r268 : Seg15.relationRow268 rho)
    (r269 : Seg15.relationRow269 rho)
    (r270 : Seg15.relationRow270 rho)
    (r271 : Seg15.relationRow271 rho)
    (hacc : onCurve (seg15RvkAcc rho 4)) :
    RvkFixedBaseLadder.FixedStepRel 4 (rho 16140)
      (seg15RvkAcc rho 4) (seg15RvkAcc rho (4 + 1)) := by
  have hbrow4 : (1*(rho 16140))*(1 + (-1)*(rho 16140)) = 0 := by
    simpa [Seg15.relationRow4] using r4
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX3 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY3 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr4 : RvkFixedBaseLadder.FixedStepRel 4 (rho 16140)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX3 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY3 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX4 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY4 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc4, seg15AccX4, seg15AccY4, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung4_wide (rho 16136 : Seg15.F) (rho 16140 : Seg15.F) (seg15AccX3 rho : Seg15.F) (seg15AccY3 rho : Seg15.F) (rho 16402 : Seg15.F) (rho 16403 : Seg15.F) (rho 16404 : Seg15.F) (rho 16405 : Seg15.F) (rho 16406 : Seg15.F) hinput
        (by simpa using seg15_prefix_4_v2 rho r267)
        (by simpa using seg15_prefix_4_addX rho r268)
        (by simpa using seg15_prefix_4_addY rho r269)
        (by simpa using seg15_prefix_4_selX rho r270)
        (by simpa using seg15_prefix_4_selY rho r271)
        hbrow4
  exact hr4

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

