import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas3
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

theorem seg15_prefix_step32 (rho : Nat -> Seg15.F)
    (r32 : Seg15.relationRow32 rho)
    (r407 : Seg15.relationRow407 rho)
    (r408 : Seg15.relationRow408 rho)
    (r409 : Seg15.relationRow409 rho)
    (r410 : Seg15.relationRow410 rho)
    (r411 : Seg15.relationRow411 rho)
    (hacc : onCurve (seg15RvkAcc rho 32)) :
    RvkFixedBaseLadder.FixedStepRel 32 (rho 16168)
      (seg15RvkAcc rho 32) (seg15RvkAcc rho (32 + 1)) := by
  have hbrow32 : (1*(rho 16168))*(1 + (-1)*(rho 16168)) = 0 := by
    simpa [Seg15.relationRow32] using r32
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX31 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY31 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr32 : RvkFixedBaseLadder.FixedStepRel 32 (rho 16168)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX31 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY31 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX32 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY32 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc32, seg15AccX32, seg15AccY32, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung32_wide (rho 16136 : Seg15.F) (rho 16168 : Seg15.F) (seg15AccX31 rho : Seg15.F) (seg15AccY31 rho : Seg15.F) (rho 16542 : Seg15.F) (rho 16543 : Seg15.F) (rho 16544 : Seg15.F) (rho 16545 : Seg15.F) (rho 16546 : Seg15.F) hinput
        (by simpa using seg15_prefix_32_v2 rho r407)
        (by simpa using seg15_prefix_32_addX rho r408)
        (by simpa using seg15_prefix_32_addY rho r409)
        (by simpa using seg15_prefix_32_selX rho r410)
        (by simpa using seg15_prefix_32_selY rho r411)
        hbrow32
  exact hr32

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

