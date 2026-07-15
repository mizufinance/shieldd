import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas3
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

theorem seg30_prefix_step36 (rho : Nat -> Seg30.F)
    (r36 : Seg30.relationRow36 rho)
    (r427 : Seg30.relationRow427 rho)
    (r428 : Seg30.relationRow428 rho)
    (r429 : Seg30.relationRow429 rho)
    (r430 : Seg30.relationRow430 rho)
    (r431 : Seg30.relationRow431 rho)
    (hacc : onCurve (seg30RvkAcc rho 36)) :
    RvkFixedBaseLadder.FixedStepRel 36 (rho 28353)
      (seg30RvkAcc rho 36) (seg30RvkAcc rho (36 + 1)) := by
  have hbrow36 : (1*(rho 28353))*(1 + (-1)*(rho 28353)) = 0 := by
    simpa [Seg30.relationRow36] using r36
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX35 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY35 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr36 : RvkFixedBaseLadder.FixedStepRel 36 (rho 28353)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX35 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY35 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX36 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY36 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc36, seg30AccX36, seg30AccY36, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung36_wide (rho 28317 : Seg30.F) (rho 28353 : Seg30.F) (seg30AccX35 rho : Seg30.F) (seg30AccY35 rho : Seg30.F) (rho 28743 : Seg30.F) (rho 28744 : Seg30.F) (rho 28745 : Seg30.F) (rho 28746 : Seg30.F) (rho 28747 : Seg30.F) hinput
        (by simpa using seg30_prefix_36_v2 rho r427)
        (by simpa using seg30_prefix_36_addX rho r428)
        (by simpa using seg30_prefix_36_addY rho r429)
        (by simpa using seg30_prefix_36_selX rho r430)
        (by simpa using seg30_prefix_36_selY rho r431)
        hbrow36
  exact hr36

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

