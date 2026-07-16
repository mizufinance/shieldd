import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas8
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

theorem seg15_prefix_step84 (rho : Nat -> Seg15.F)
    (r84 : Seg15.relationRow84 rho)
    (r667 : Seg15.relationRow667 rho)
    (r668 : Seg15.relationRow668 rho)
    (r669 : Seg15.relationRow669 rho)
    (r670 : Seg15.relationRow670 rho)
    (r671 : Seg15.relationRow671 rho)
    (hacc : onCurve (seg15RvkAcc rho 84)) :
    RvkFixedBaseLadder.FixedStepRel 84 (rho 16220)
      (seg15RvkAcc rho 84) (seg15RvkAcc rho (84 + 1)) := by
  have hbrow84 : (1*(rho 16220))*(1 + (-1)*(rho 16220)) = 0 := by
    simpa [Seg15.relationRow84] using r84
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX83 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY83 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr84 : RvkFixedBaseLadder.FixedStepRel 84 (rho 16220)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX83 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY83 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX84 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY84 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc84, seg15AccX84, seg15AccY84, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung84_wide (rho 16136 : Seg15.F) (rho 16220 : Seg15.F) (seg15AccX83 rho : Seg15.F) (seg15AccY83 rho : Seg15.F) (rho 16802 : Seg15.F) (rho 16803 : Seg15.F) (rho 16804 : Seg15.F) (rho 16805 : Seg15.F) (rho 16806 : Seg15.F) hinput
        (by simpa using seg15_prefix_84_v2 rho r667)
        (by simpa using seg15_prefix_84_addX rho r668)
        (by simpa using seg15_prefix_84_addY rho r669)
        (by simpa using seg15_prefix_84_selX rho r670)
        (by simpa using seg15_prefix_84_selY rho r671)
        hbrow84
  exact hr84

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

