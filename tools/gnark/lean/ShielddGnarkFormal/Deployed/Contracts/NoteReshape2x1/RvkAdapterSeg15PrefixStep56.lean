import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas5
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_step56 (rho : Nat -> Seg15.F)
    (r56 : Seg15.relationRow56 rho)
    (r527 : Seg15.relationRow527 rho)
    (r528 : Seg15.relationRow528 rho)
    (r529 : Seg15.relationRow529 rho)
    (r530 : Seg15.relationRow530 rho)
    (r531 : Seg15.relationRow531 rho)
    (hacc : onCurve (seg15RvkAcc rho 56)) :
    RvkFixedBaseLadder.FixedStepRel 56 (rho 16192)
      (seg15RvkAcc rho 56) (seg15RvkAcc rho (56 + 1)) := by
  have hbrow56 : (1*(rho 16192))*(1 + (-1)*(rho 16192)) = 0 := by
    simpa [Seg15.relationRow56] using r56
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX55 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY55 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr56 : RvkFixedBaseLadder.FixedStepRel 56 (rho 16192)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX55 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY55 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX56 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY56 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc56, seg15AccX56, seg15AccY56, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung56_wide (rho 16136 : Seg15.F) (rho 16192 : Seg15.F) (seg15AccX55 rho : Seg15.F) (seg15AccY55 rho : Seg15.F) (rho 16662 : Seg15.F) (rho 16663 : Seg15.F) (rho 16664 : Seg15.F) (rho 16665 : Seg15.F) (rho 16666 : Seg15.F) hinput
        (by simpa using seg15_prefix_56_v2 rho r527)
        (by simpa using seg15_prefix_56_addX rho r528)
        (by simpa using seg15_prefix_56_addY rho r529)
        (by simpa using seg15_prefix_56_selX rho r530)
        (by simpa using seg15_prefix_56_selY rho r531)
        hbrow56
  exact hr56

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

