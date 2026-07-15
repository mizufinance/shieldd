import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas6
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

theorem seg15_prefix_step61 (rho : Nat -> Seg15.F)
    (r61 : Seg15.relationRow61 rho)
    (r552 : Seg15.relationRow552 rho)
    (r553 : Seg15.relationRow553 rho)
    (r554 : Seg15.relationRow554 rho)
    (r555 : Seg15.relationRow555 rho)
    (r556 : Seg15.relationRow556 rho)
    (hacc : onCurve (seg15RvkAcc rho 61)) :
    RvkFixedBaseLadder.FixedStepRel 61 (rho 16197)
      (seg15RvkAcc rho 61) (seg15RvkAcc rho (61 + 1)) := by
  have hbrow61 : (1*(rho 16197))*(1 + (-1)*(rho 16197)) = 0 := by
    simpa [Seg15.relationRow61] using r61
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX60 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY60 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr61 : RvkFixedBaseLadder.FixedStepRel 61 (rho 16197)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX60 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY60 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX61 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY61 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc61, seg15AccX61, seg15AccY61, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung61_wide (rho 16136 : Seg15.F) (rho 16197 : Seg15.F) (seg15AccX60 rho : Seg15.F) (seg15AccY60 rho : Seg15.F) (rho 16687 : Seg15.F) (rho 16688 : Seg15.F) (rho 16689 : Seg15.F) (rho 16690 : Seg15.F) (rho 16691 : Seg15.F) hinput
        (by simpa using seg15_prefix_61_v2 rho r552)
        (by simpa using seg15_prefix_61_addX rho r553)
        (by simpa using seg15_prefix_61_addY rho r554)
        (by simpa using seg15_prefix_61_selX rho r555)
        (by simpa using seg15_prefix_61_selY rho r556)
        hbrow61
  exact hr61

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

