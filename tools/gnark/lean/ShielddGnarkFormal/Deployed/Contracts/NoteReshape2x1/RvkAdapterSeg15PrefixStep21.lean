import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas2
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

theorem seg15_prefix_step21 (rho : Nat -> Seg15.F)
    (r21 : Seg15.relationRow21 rho)
    (r352 : Seg15.relationRow352 rho)
    (r353 : Seg15.relationRow353 rho)
    (r354 : Seg15.relationRow354 rho)
    (r355 : Seg15.relationRow355 rho)
    (r356 : Seg15.relationRow356 rho)
    (hacc : onCurve (seg15RvkAcc rho 21)) :
    RvkFixedBaseLadder.FixedStepRel 21 (rho 16157)
      (seg15RvkAcc rho 21) (seg15RvkAcc rho (21 + 1)) := by
  have hbrow21 : (1*(rho 16157))*(1 + (-1)*(rho 16157)) = 0 := by
    simpa [Seg15.relationRow21] using r21
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX20 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY20 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr21 : RvkFixedBaseLadder.FixedStepRel 21 (rho 16157)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX20 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY20 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX21 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY21 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc21, seg15AccX21, seg15AccY21, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung21_wide (rho 16136 : Seg15.F) (rho 16157 : Seg15.F) (seg15AccX20 rho : Seg15.F) (seg15AccY20 rho : Seg15.F) (rho 16487 : Seg15.F) (rho 16488 : Seg15.F) (rho 16489 : Seg15.F) (rho 16490 : Seg15.F) (rho 16491 : Seg15.F) hinput
        (by simpa using seg15_prefix_21_v2 rho r352)
        (by simpa using seg15_prefix_21_addX rho r353)
        (by simpa using seg15_prefix_21_addY rho r354)
        (by simpa using seg15_prefix_21_selX rho r355)
        (by simpa using seg15_prefix_21_selY rho r356)
        hbrow21
  exact hr21

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

