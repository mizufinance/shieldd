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

theorem seg15_prefix_step7 (rho : Nat -> Seg15.F)
    (r7 : Seg15.relationRow7 rho)
    (r282 : Seg15.relationRow282 rho)
    (r283 : Seg15.relationRow283 rho)
    (r284 : Seg15.relationRow284 rho)
    (r285 : Seg15.relationRow285 rho)
    (r286 : Seg15.relationRow286 rho)
    (hacc : onCurve (seg15RvkAcc rho 7)) :
    RvkFixedBaseLadder.FixedStepRel 7 (rho 16143)
      (seg15RvkAcc rho 7) (seg15RvkAcc rho (7 + 1)) := by
  have hbrow7 : (1*(rho 16143))*(1 + (-1)*(rho 16143)) = 0 := by
    simpa [Seg15.relationRow7] using r7
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX6 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY6 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr7 : RvkFixedBaseLadder.FixedStepRel 7 (rho 16143)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX6 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY6 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX7 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY7 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc7, seg15AccX7, seg15AccY7, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung7_wide (rho 16136 : Seg15.F) (rho 16143 : Seg15.F) (seg15AccX6 rho : Seg15.F) (seg15AccY6 rho : Seg15.F) (rho 16417 : Seg15.F) (rho 16418 : Seg15.F) (rho 16419 : Seg15.F) (rho 16420 : Seg15.F) (rho 16421 : Seg15.F) hinput
        (by simpa using seg15_prefix_7_v2 rho r282)
        (by simpa using seg15_prefix_7_addX rho r283)
        (by simpa using seg15_prefix_7_addY rho r284)
        (by simpa using seg15_prefix_7_selX rho r285)
        (by simpa using seg15_prefix_7_selY rho r286)
        hbrow7
  exact hr7

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

