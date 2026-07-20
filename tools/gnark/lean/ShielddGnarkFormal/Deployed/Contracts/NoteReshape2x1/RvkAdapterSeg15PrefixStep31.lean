import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas3
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

theorem seg15_prefix_step31 (rho : Nat -> Seg15.F)
    (r31 : Seg15.relationRow31 rho)
    (r402 : Seg15.relationRow402 rho)
    (r403 : Seg15.relationRow403 rho)
    (r404 : Seg15.relationRow404 rho)
    (r405 : Seg15.relationRow405 rho)
    (r406 : Seg15.relationRow406 rho)
    (hacc : onCurve (seg15RvkAcc rho 31)) :
    RvkFixedBaseLadder.FixedStepRel 31 (rho 16161)
      (seg15RvkAcc rho 31) (seg15RvkAcc rho (31 + 1)) := by
  have hbrow31 : (1*(rho 16161))*(1 + (-1)*(rho 16161)) = 0 := by
    simpa [Seg15.relationRow31] using r31
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX30 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY30 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr31 : RvkFixedBaseLadder.FixedStepRel 31 (rho 16161)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX30 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY30 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX31 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY31 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc31, seg15AccX31, seg15AccY31, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung31_wide (rho 16130 : Seg15.F) (rho 16161 : Seg15.F) (seg15AccX30 rho : Seg15.F) (seg15AccY30 rho : Seg15.F) (rho 16531 : Seg15.F) (rho 16532 : Seg15.F) (rho 16533 : Seg15.F) (rho 16534 : Seg15.F) (rho 16535 : Seg15.F) hinput
        (by simpa using seg15_prefix_31_v2 rho r402)
        (by simpa using seg15_prefix_31_addX rho r403)
        (by simpa using seg15_prefix_31_addY rho r404)
        (by simpa using seg15_prefix_31_selX rho r405)
        (by simpa using seg15_prefix_31_selY rho r406)
        hbrow31
  exact hr31

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

