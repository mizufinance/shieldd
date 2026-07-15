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

theorem seg30_prefix_step32 (rho : Nat -> Seg30.F)
    (r32 : Seg30.relationRow32 rho)
    (r407 : Seg30.relationRow407 rho)
    (r408 : Seg30.relationRow408 rho)
    (r409 : Seg30.relationRow409 rho)
    (r410 : Seg30.relationRow410 rho)
    (r411 : Seg30.relationRow411 rho)
    (hacc : onCurve (seg30RvkAcc rho 32)) :
    RvkFixedBaseLadder.FixedStepRel 32 (rho 28349)
      (seg30RvkAcc rho 32) (seg30RvkAcc rho (32 + 1)) := by
  have hbrow32 : (1*(rho 28349))*(1 + (-1)*(rho 28349)) = 0 := by
    simpa [Seg30.relationRow32] using r32
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX31 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY31 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr32 : RvkFixedBaseLadder.FixedStepRel 32 (rho 28349)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX31 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY31 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX32 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY32 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc32, seg30AccX32, seg30AccY32, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung32_wide (rho 28317 : Seg30.F) (rho 28349 : Seg30.F) (seg30AccX31 rho : Seg30.F) (seg30AccY31 rho : Seg30.F) (rho 28723 : Seg30.F) (rho 28724 : Seg30.F) (rho 28725 : Seg30.F) (rho 28726 : Seg30.F) (rho 28727 : Seg30.F) hinput
        (by simpa using seg30_prefix_32_v2 rho r407)
        (by simpa using seg30_prefix_32_addX rho r408)
        (by simpa using seg30_prefix_32_addY rho r409)
        (by simpa using seg30_prefix_32_selX rho r410)
        (by simpa using seg30_prefix_32_selY rho r411)
        hbrow32
  exact hr32

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

