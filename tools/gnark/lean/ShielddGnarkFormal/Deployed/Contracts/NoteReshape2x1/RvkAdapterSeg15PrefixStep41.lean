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

theorem seg15_prefix_step41 (rho : Nat -> Seg15.F)
    (r41 : Seg15.relationRow41 rho)
    (r452 : Seg15.relationRow452 rho)
    (r453 : Seg15.relationRow453 rho)
    (r454 : Seg15.relationRow454 rho)
    (r455 : Seg15.relationRow455 rho)
    (r456 : Seg15.relationRow456 rho)
    (hacc : onCurve (seg15RvkAcc rho 41)) :
    RvkFixedBaseLadder.FixedStepRel 41 (rho 16177)
      (seg15RvkAcc rho 41) (seg15RvkAcc rho (41 + 1)) := by
  have hbrow41 : (1*(rho 16177))*(1 + (-1)*(rho 16177)) = 0 := by
    simpa [Seg15.relationRow41] using r41
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX40 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY40 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr41 : RvkFixedBaseLadder.FixedStepRel 41 (rho 16177)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX40 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY40 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX41 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY41 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc41, seg15AccX41, seg15AccY41, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung41_wide (rho 16136 : Seg15.F) (rho 16177 : Seg15.F) (seg15AccX40 rho : Seg15.F) (seg15AccY40 rho : Seg15.F) (rho 16587 : Seg15.F) (rho 16588 : Seg15.F) (rho 16589 : Seg15.F) (rho 16590 : Seg15.F) (rho 16591 : Seg15.F) hinput
        (by simpa using seg15_prefix_41_v2 rho r452)
        (by simpa using seg15_prefix_41_addX rho r453)
        (by simpa using seg15_prefix_41_addY rho r454)
        (by simpa using seg15_prefix_41_selX rho r455)
        (by simpa using seg15_prefix_41_selY rho r456)
        hbrow41
  exact hr41

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

