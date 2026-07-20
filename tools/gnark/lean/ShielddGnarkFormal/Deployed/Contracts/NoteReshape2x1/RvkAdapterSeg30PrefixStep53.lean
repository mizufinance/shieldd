import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas5
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

theorem seg30_prefix_step53 (rho : Nat -> Seg30.F)
    (r53 : Seg30.relationRow53 rho)
    (r512 : Seg30.relationRow512 rho)
    (r513 : Seg30.relationRow513 rho)
    (r514 : Seg30.relationRow514 rho)
    (r515 : Seg30.relationRow515 rho)
    (r516 : Seg30.relationRow516 rho)
    (hacc : onCurve (seg30RvkAcc rho 53)) :
    RvkFixedBaseLadder.FixedStepRel 53 (rho 28364)
      (seg30RvkAcc rho 53) (seg30RvkAcc rho (53 + 1)) := by
  have hbrow53 : (1*(rho 28364))*(1 + (-1)*(rho 28364)) = 0 := by
    simpa [Seg30.relationRow53] using r53
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX52 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY52 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr53 : RvkFixedBaseLadder.FixedStepRel 53 (rho 28364)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX52 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY52 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX53 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY53 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc53, seg30AccX53, seg30AccY53, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung53_wide (rho 28311 : Seg30.F) (rho 28364 : Seg30.F) (seg30AccX52 rho : Seg30.F) (seg30AccY52 rho : Seg30.F) (rho 28822 : Seg30.F) (rho 28823 : Seg30.F) (rho 28824 : Seg30.F) (rho 28825 : Seg30.F) (rho 28826 : Seg30.F) hinput
        (by simpa using seg30_prefix_53_v2 rho r512)
        (by simpa using seg30_prefix_53_addX rho r513)
        (by simpa using seg30_prefix_53_addY rho r514)
        (by simpa using seg30_prefix_53_selX rho r515)
        (by simpa using seg30_prefix_53_selY rho r516)
        hbrow53
  exact hr53

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

