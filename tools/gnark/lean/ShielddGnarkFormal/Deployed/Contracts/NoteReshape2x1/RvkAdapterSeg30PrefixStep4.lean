import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas0
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

theorem seg30_prefix_step4 (rho : Nat -> Seg30.F)
    (r4 : Seg30.relationRow4 rho)
    (r267 : Seg30.relationRow267 rho)
    (r268 : Seg30.relationRow268 rho)
    (r269 : Seg30.relationRow269 rho)
    (r270 : Seg30.relationRow270 rho)
    (r271 : Seg30.relationRow271 rho)
    (hacc : onCurve (seg30RvkAcc rho 4)) :
    RvkFixedBaseLadder.FixedStepRel 4 (rho 28315)
      (seg30RvkAcc rho 4) (seg30RvkAcc rho (4 + 1)) := by
  have hbrow4 : (1*(rho 28315))*(1 + (-1)*(rho 28315)) = 0 := by
    simpa [Seg30.relationRow4] using r4
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX3 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY3 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr4 : RvkFixedBaseLadder.FixedStepRel 4 (rho 28315)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX3 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY3 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX4 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY4 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc4, seg30AccX4, seg30AccY4, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung4_wide (rho 28311 : Seg30.F) (rho 28315 : Seg30.F) (seg30AccX3 rho : Seg30.F) (seg30AccY3 rho : Seg30.F) (rho 28577 : Seg30.F) (rho 28578 : Seg30.F) (rho 28579 : Seg30.F) (rho 28580 : Seg30.F) (rho 28581 : Seg30.F) hinput
        (by simpa using seg30_prefix_4_v2 rho r267)
        (by simpa using seg30_prefix_4_addX rho r268)
        (by simpa using seg30_prefix_4_addY rho r269)
        (by simpa using seg30_prefix_4_selX rho r270)
        (by simpa using seg30_prefix_4_selY rho r271)
        hbrow4
  exact hr4

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

