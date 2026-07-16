import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas1
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

theorem seg15_prefix_step11 (rho : Nat -> Seg15.F)
    (r11 : Seg15.relationRow11 rho)
    (r302 : Seg15.relationRow302 rho)
    (r303 : Seg15.relationRow303 rho)
    (r304 : Seg15.relationRow304 rho)
    (r305 : Seg15.relationRow305 rho)
    (r306 : Seg15.relationRow306 rho)
    (hacc : onCurve (seg15RvkAcc rho 11)) :
    RvkFixedBaseLadder.FixedStepRel 11 (rho 16147)
      (seg15RvkAcc rho 11) (seg15RvkAcc rho (11 + 1)) := by
  have hbrow11 : (1*(rho 16147))*(1 + (-1)*(rho 16147)) = 0 := by
    simpa [Seg15.relationRow11] using r11
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX10 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY10 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr11 : RvkFixedBaseLadder.FixedStepRel 11 (rho 16147)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX10 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY10 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX11 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY11 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc11, seg15AccX11, seg15AccY11, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung11_wide (rho 16136 : Seg15.F) (rho 16147 : Seg15.F) (seg15AccX10 rho : Seg15.F) (seg15AccY10 rho : Seg15.F) (rho 16437 : Seg15.F) (rho 16438 : Seg15.F) (rho 16439 : Seg15.F) (rho 16440 : Seg15.F) (rho 16441 : Seg15.F) hinput
        (by simpa using seg15_prefix_11_v2 rho r302)
        (by simpa using seg15_prefix_11_addX rho r303)
        (by simpa using seg15_prefix_11_addY rho r304)
        (by simpa using seg15_prefix_11_selX rho r305)
        (by simpa using seg15_prefix_11_selY rho r306)
        hbrow11
  exact hr11

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

