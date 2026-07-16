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

theorem seg15_prefix_step43 (rho : Nat -> Seg15.F)
    (r43 : Seg15.relationRow43 rho)
    (r462 : Seg15.relationRow462 rho)
    (r463 : Seg15.relationRow463 rho)
    (r464 : Seg15.relationRow464 rho)
    (r465 : Seg15.relationRow465 rho)
    (r466 : Seg15.relationRow466 rho)
    (hacc : onCurve (seg15RvkAcc rho 43)) :
    RvkFixedBaseLadder.FixedStepRel 43 (rho 16179)
      (seg15RvkAcc rho 43) (seg15RvkAcc rho (43 + 1)) := by
  have hbrow43 : (1*(rho 16179))*(1 + (-1)*(rho 16179)) = 0 := by
    simpa [Seg15.relationRow43] using r43
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX42 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY42 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr43 : RvkFixedBaseLadder.FixedStepRel 43 (rho 16179)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX42 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY42 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX43 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY43 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc43, seg15AccX43, seg15AccY43, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung43_wide (rho 16136 : Seg15.F) (rho 16179 : Seg15.F) (seg15AccX42 rho : Seg15.F) (seg15AccY42 rho : Seg15.F) (rho 16597 : Seg15.F) (rho 16598 : Seg15.F) (rho 16599 : Seg15.F) (rho 16600 : Seg15.F) (rho 16601 : Seg15.F) hinput
        (by simpa using seg15_prefix_43_v2 rho r462)
        (by simpa using seg15_prefix_43_addX rho r463)
        (by simpa using seg15_prefix_43_addY rho r464)
        (by simpa using seg15_prefix_43_selX rho r465)
        (by simpa using seg15_prefix_43_selY rho r466)
        hbrow43
  exact hr43

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

