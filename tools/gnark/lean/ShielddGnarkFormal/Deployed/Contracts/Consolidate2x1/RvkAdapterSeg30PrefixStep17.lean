import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas1
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step17 (rho : Nat -> Seg30.F)
    (r17 : Seg30.relationRow17 rho)
    (r332 : Seg30.relationRow332 rho)
    (r333 : Seg30.relationRow333 rho)
    (r334 : Seg30.relationRow334 rho)
    (r335 : Seg30.relationRow335 rho)
    (r336 : Seg30.relationRow336 rho)
    (hacc : onCurve (seg30RvkAcc rho 17)) :
    RvkFixedBaseLadder.FixedStepRel 17 (rho 28334)
      (seg30RvkAcc rho 17) (seg30RvkAcc rho (17 + 1)) := by
  have hbrow17 : (1*(rho 28334))*(1 + (-1)*(rho 28334)) = 0 := by
    simpa [Seg30.relationRow17] using r17
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX16 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY16 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr17 : RvkFixedBaseLadder.FixedStepRel 17 (rho 28334)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX16 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY16 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX17 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY17 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc17, seg30AccX17, seg30AccY17, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung17_wide (rho 28317 : Seg30.F) (rho 28334 : Seg30.F) (seg30AccX16 rho : Seg30.F) (seg30AccY16 rho : Seg30.F) (rho 28648 : Seg30.F) (rho 28649 : Seg30.F) (rho 28650 : Seg30.F) (rho 28651 : Seg30.F) (rho 28652 : Seg30.F) hinput
        (by simpa using seg30_prefix_17_v2 rho r332)
        (by simpa using seg30_prefix_17_addX rho r333)
        (by simpa using seg30_prefix_17_addY rho r334)
        (by simpa using seg30_prefix_17_selX rho r335)
        (by simpa using seg30_prefix_17_selY rho r336)
        hbrow17
  exact hr17

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

