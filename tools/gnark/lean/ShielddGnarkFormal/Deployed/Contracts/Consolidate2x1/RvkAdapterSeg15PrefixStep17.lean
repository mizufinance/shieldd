import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas1
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

theorem seg15_prefix_step17 (rho : Nat -> Seg15.F)
    (r17 : Seg15.relationRow17 rho)
    (r332 : Seg15.relationRow332 rho)
    (r333 : Seg15.relationRow333 rho)
    (r334 : Seg15.relationRow334 rho)
    (r335 : Seg15.relationRow335 rho)
    (r336 : Seg15.relationRow336 rho)
    (hacc : onCurve (seg15RvkAcc rho 17)) :
    RvkFixedBaseLadder.FixedStepRel 17 (rho 16153)
      (seg15RvkAcc rho 17) (seg15RvkAcc rho (17 + 1)) := by
  have hbrow17 : (1*(rho 16153))*(1 + (-1)*(rho 16153)) = 0 := by
    simpa [Seg15.relationRow17] using r17
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX16 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY16 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr17 : RvkFixedBaseLadder.FixedStepRel 17 (rho 16153)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX16 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY16 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX17 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY17 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc17, seg15AccX17, seg15AccY17, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung17_wide (rho 16136 : Seg15.F) (rho 16153 : Seg15.F) (seg15AccX16 rho : Seg15.F) (seg15AccY16 rho : Seg15.F) (rho 16467 : Seg15.F) (rho 16468 : Seg15.F) (rho 16469 : Seg15.F) (rho 16470 : Seg15.F) (rho 16471 : Seg15.F) hinput
        (by simpa using seg15_prefix_17_v2 rho r332)
        (by simpa using seg15_prefix_17_addX rho r333)
        (by simpa using seg15_prefix_17_addY rho r334)
        (by simpa using seg15_prefix_17_selX rho r335)
        (by simpa using seg15_prefix_17_selY rho r336)
        hbrow17
  exact hr17

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

