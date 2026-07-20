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

theorem seg15_prefix_step38 (rho : Nat -> Seg15.F)
    (r38 : Seg15.relationRow38 rho)
    (r437 : Seg15.relationRow437 rho)
    (r438 : Seg15.relationRow438 rho)
    (r439 : Seg15.relationRow439 rho)
    (r440 : Seg15.relationRow440 rho)
    (r441 : Seg15.relationRow441 rho)
    (hacc : onCurve (seg15RvkAcc rho 38)) :
    RvkFixedBaseLadder.FixedStepRel 38 (rho 16168)
      (seg15RvkAcc rho 38) (seg15RvkAcc rho (38 + 1)) := by
  have hbrow38 : (1*(rho 16168))*(1 + (-1)*(rho 16168)) = 0 := by
    simpa [Seg15.relationRow38] using r38
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX37 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY37 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr38 : RvkFixedBaseLadder.FixedStepRel 38 (rho 16168)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX37 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY37 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX38 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY38 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc38, seg15AccX38, seg15AccY38, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung38_wide (rho 16130 : Seg15.F) (rho 16168 : Seg15.F) (seg15AccX37 rho : Seg15.F) (seg15AccY37 rho : Seg15.F) (rho 16566 : Seg15.F) (rho 16567 : Seg15.F) (rho 16568 : Seg15.F) (rho 16569 : Seg15.F) (rho 16570 : Seg15.F) hinput
        (by simpa using seg15_prefix_38_v2 rho r437)
        (by simpa using seg15_prefix_38_addX rho r438)
        (by simpa using seg15_prefix_38_addY rho r439)
        (by simpa using seg15_prefix_38_selX rho r440)
        (by simpa using seg15_prefix_38_selY rho r441)
        hbrow38
  exact hr38

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

