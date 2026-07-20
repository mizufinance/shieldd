import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas2
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step26 (rho : Nat -> Seg30.F)
    (r26 : Seg30.relationRow26 rho)
    (r377 : Seg30.relationRow377 rho)
    (r378 : Seg30.relationRow378 rho)
    (r379 : Seg30.relationRow379 rho)
    (r380 : Seg30.relationRow380 rho)
    (r381 : Seg30.relationRow381 rho)
    (hacc : onCurve (seg30RvkAcc rho 26)) :
    RvkFixedBaseLadder.FixedStepRel 26 (rho 28337)
      (seg30RvkAcc rho 26) (seg30RvkAcc rho (26 + 1)) := by
  have hbrow26 : (1*(rho 28337))*(1 + (-1)*(rho 28337)) = 0 := by
    simpa [Seg30.relationRow26] using r26
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX25 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY25 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr26 : RvkFixedBaseLadder.FixedStepRel 26 (rho 28337)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX25 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY25 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX26 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY26 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc26, seg30AccX26, seg30AccY26, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung26_wide (rho 28311 : Seg30.F) (rho 28337 : Seg30.F) (seg30AccX25 rho : Seg30.F) (seg30AccY25 rho : Seg30.F) (rho 28687 : Seg30.F) (rho 28688 : Seg30.F) (rho 28689 : Seg30.F) (rho 28690 : Seg30.F) (rho 28691 : Seg30.F) hinput
        (by simpa using seg30_prefix_26_v2 rho r377)
        (by simpa using seg30_prefix_26_addX rho r378)
        (by simpa using seg30_prefix_26_addY rho r379)
        (by simpa using seg30_prefix_26_selX rho r380)
        (by simpa using seg30_prefix_26_selY rho r381)
        hbrow26
  exact hr26

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

