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

theorem seg15_prefix_step53 (rho : Nat -> Seg15.F)
    (r53 : Seg15.relationRow53 rho)
    (r512 : Seg15.relationRow512 rho)
    (r513 : Seg15.relationRow513 rho)
    (r514 : Seg15.relationRow514 rho)
    (r515 : Seg15.relationRow515 rho)
    (r516 : Seg15.relationRow516 rho)
    (hacc : onCurve (seg15RvkAcc rho 53)) :
    RvkFixedBaseLadder.FixedStepRel 53 (rho 16189)
      (seg15RvkAcc rho 53) (seg15RvkAcc rho (53 + 1)) := by
  have hbrow53 : (1*(rho 16189))*(1 + (-1)*(rho 16189)) = 0 := by
    simpa [Seg15.relationRow53] using r53
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX52 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY52 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr53 : RvkFixedBaseLadder.FixedStepRel 53 (rho 16189)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX52 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY52 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX53 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY53 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc53, seg15AccX53, seg15AccY53, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung53_wide (rho 16136 : Seg15.F) (rho 16189 : Seg15.F) (seg15AccX52 rho : Seg15.F) (seg15AccY52 rho : Seg15.F) (rho 16647 : Seg15.F) (rho 16648 : Seg15.F) (rho 16649 : Seg15.F) (rho 16650 : Seg15.F) (rho 16651 : Seg15.F) hinput
        (by simpa using seg15_prefix_53_v2 rho r512)
        (by simpa using seg15_prefix_53_addX rho r513)
        (by simpa using seg15_prefix_53_addY rho r514)
        (by simpa using seg15_prefix_53_selX rho r515)
        (by simpa using seg15_prefix_53_selY rho r516)
        hbrow53
  exact hr53

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

