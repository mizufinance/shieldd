import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas5
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

theorem seg15_prefix_step57 (rho : Nat -> Seg15.F)
    (r57 : Seg15.relationRow57 rho)
    (r532 : Seg15.relationRow532 rho)
    (r533 : Seg15.relationRow533 rho)
    (r534 : Seg15.relationRow534 rho)
    (r535 : Seg15.relationRow535 rho)
    (r536 : Seg15.relationRow536 rho)
    (hacc : onCurve (seg15RvkAcc rho 57)) :
    RvkFixedBaseLadder.FixedStepRel 57 (rho 16193)
      (seg15RvkAcc rho 57) (seg15RvkAcc rho (57 + 1)) := by
  have hbrow57 : (1*(rho 16193))*(1 + (-1)*(rho 16193)) = 0 := by
    simpa [Seg15.relationRow57] using r57
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX56 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY56 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr57 : RvkFixedBaseLadder.FixedStepRel 57 (rho 16193)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX56 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY56 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX57 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY57 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc57, seg15AccX57, seg15AccY57, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung57_wide (rho 16136 : Seg15.F) (rho 16193 : Seg15.F) (seg15AccX56 rho : Seg15.F) (seg15AccY56 rho : Seg15.F) (rho 16667 : Seg15.F) (rho 16668 : Seg15.F) (rho 16669 : Seg15.F) (rho 16670 : Seg15.F) (rho 16671 : Seg15.F) hinput
        (by simpa using seg15_prefix_57_v2 rho r532)
        (by simpa using seg15_prefix_57_addX rho r533)
        (by simpa using seg15_prefix_57_addY rho r534)
        (by simpa using seg15_prefix_57_selX rho r535)
        (by simpa using seg15_prefix_57_selY rho r536)
        hbrow57
  exact hr57

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

