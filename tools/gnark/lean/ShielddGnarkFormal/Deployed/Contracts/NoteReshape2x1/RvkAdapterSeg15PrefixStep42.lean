import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas4
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

theorem seg15_prefix_step42 (rho : Nat -> Seg15.F)
    (r42 : Seg15.relationRow42 rho)
    (r457 : Seg15.relationRow457 rho)
    (r458 : Seg15.relationRow458 rho)
    (r459 : Seg15.relationRow459 rho)
    (r460 : Seg15.relationRow460 rho)
    (r461 : Seg15.relationRow461 rho)
    (hacc : onCurve (seg15RvkAcc rho 42)) :
    RvkFixedBaseLadder.FixedStepRel 42 (rho 16178)
      (seg15RvkAcc rho 42) (seg15RvkAcc rho (42 + 1)) := by
  have hbrow42 : (1*(rho 16178))*(1 + (-1)*(rho 16178)) = 0 := by
    simpa [Seg15.relationRow42] using r42
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX41 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY41 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr42 : RvkFixedBaseLadder.FixedStepRel 42 (rho 16178)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX41 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY41 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX42 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY42 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc42, seg15AccX42, seg15AccY42, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung42_wide (rho 16136 : Seg15.F) (rho 16178 : Seg15.F) (seg15AccX41 rho : Seg15.F) (seg15AccY41 rho : Seg15.F) (rho 16592 : Seg15.F) (rho 16593 : Seg15.F) (rho 16594 : Seg15.F) (rho 16595 : Seg15.F) (rho 16596 : Seg15.F) hinput
        (by simpa using seg15_prefix_42_v2 rho r457)
        (by simpa using seg15_prefix_42_addX rho r458)
        (by simpa using seg15_prefix_42_addY rho r459)
        (by simpa using seg15_prefix_42_selX rho r460)
        (by simpa using seg15_prefix_42_selY rho r461)
        hbrow42
  exact hr42

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

