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

theorem seg15_prefix_step27 (rho : Nat -> Seg15.F)
    (r27 : Seg15.relationRow27 rho)
    (r382 : Seg15.relationRow382 rho)
    (r383 : Seg15.relationRow383 rho)
    (r384 : Seg15.relationRow384 rho)
    (r385 : Seg15.relationRow385 rho)
    (r386 : Seg15.relationRow386 rho)
    (hacc : onCurve (seg15RvkAcc rho 27)) :
    RvkFixedBaseLadder.FixedStepRel 27 (rho 16163)
      (seg15RvkAcc rho 27) (seg15RvkAcc rho (27 + 1)) := by
  have hbrow27 : (1*(rho 16163))*(1 + (-1)*(rho 16163)) = 0 := by
    simpa [Seg15.relationRow27] using r27
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX26 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY26 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr27 : RvkFixedBaseLadder.FixedStepRel 27 (rho 16163)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX26 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY26 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX27 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY27 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc27, seg15AccX27, seg15AccY27, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung27_wide (rho 16136 : Seg15.F) (rho 16163 : Seg15.F) (seg15AccX26 rho : Seg15.F) (seg15AccY26 rho : Seg15.F) (rho 16517 : Seg15.F) (rho 16518 : Seg15.F) (rho 16519 : Seg15.F) (rho 16520 : Seg15.F) (rho 16521 : Seg15.F) hinput
        (by simpa using seg15_prefix_27_v2 rho r382)
        (by simpa using seg15_prefix_27_addX rho r383)
        (by simpa using seg15_prefix_27_addY rho r384)
        (by simpa using seg15_prefix_27_selX rho r385)
        (by simpa using seg15_prefix_27_selY rho r386)
        hbrow27
  exact hr27

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

