import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas4
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

theorem seg30_prefix_step43 (rho : Nat -> Seg30.F)
    (r43 : Seg30.relationRow43 rho)
    (r462 : Seg30.relationRow462 rho)
    (r463 : Seg30.relationRow463 rho)
    (r464 : Seg30.relationRow464 rho)
    (r465 : Seg30.relationRow465 rho)
    (r466 : Seg30.relationRow466 rho)
    (hacc : onCurve (seg30RvkAcc rho 43)) :
    RvkFixedBaseLadder.FixedStepRel 43 (rho 28360)
      (seg30RvkAcc rho 43) (seg30RvkAcc rho (43 + 1)) := by
  have hbrow43 : (1*(rho 28360))*(1 + (-1)*(rho 28360)) = 0 := by
    simpa [Seg30.relationRow43] using r43
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX42 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY42 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr43 : RvkFixedBaseLadder.FixedStepRel 43 (rho 28360)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX42 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY42 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX43 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY43 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc43, seg30AccX43, seg30AccY43, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung43_wide (rho 28317 : Seg30.F) (rho 28360 : Seg30.F) (seg30AccX42 rho : Seg30.F) (seg30AccY42 rho : Seg30.F) (rho 28778 : Seg30.F) (rho 28779 : Seg30.F) (rho 28780 : Seg30.F) (rho 28781 : Seg30.F) (rho 28782 : Seg30.F) hinput
        (by simpa using seg30_prefix_43_v2 rho r462)
        (by simpa using seg30_prefix_43_addX rho r463)
        (by simpa using seg30_prefix_43_addY rho r464)
        (by simpa using seg30_prefix_43_selX rho r465)
        (by simpa using seg30_prefix_43_selY rho r466)
        hbrow43
  exact hr43

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

