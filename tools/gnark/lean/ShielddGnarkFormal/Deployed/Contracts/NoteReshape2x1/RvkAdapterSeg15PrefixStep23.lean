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

theorem seg15_prefix_step23 (rho : Nat -> Seg15.F)
    (r23 : Seg15.relationRow23 rho)
    (r362 : Seg15.relationRow362 rho)
    (r363 : Seg15.relationRow363 rho)
    (r364 : Seg15.relationRow364 rho)
    (r365 : Seg15.relationRow365 rho)
    (r366 : Seg15.relationRow366 rho)
    (hacc : onCurve (seg15RvkAcc rho 23)) :
    RvkFixedBaseLadder.FixedStepRel 23 (rho 16153)
      (seg15RvkAcc rho 23) (seg15RvkAcc rho (23 + 1)) := by
  have hbrow23 : (1*(rho 16153))*(1 + (-1)*(rho 16153)) = 0 := by
    simpa [Seg15.relationRow23] using r23
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX22 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY22 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr23 : RvkFixedBaseLadder.FixedStepRel 23 (rho 16153)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX22 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY22 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX23 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY23 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc23, seg15AccX23, seg15AccY23, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung23_wide (rho 16130 : Seg15.F) (rho 16153 : Seg15.F) (seg15AccX22 rho : Seg15.F) (seg15AccY22 rho : Seg15.F) (rho 16491 : Seg15.F) (rho 16492 : Seg15.F) (rho 16493 : Seg15.F) (rho 16494 : Seg15.F) (rho 16495 : Seg15.F) hinput
        (by simpa using seg15_prefix_23_v2 rho r362)
        (by simpa using seg15_prefix_23_addX rho r363)
        (by simpa using seg15_prefix_23_addY rho r364)
        (by simpa using seg15_prefix_23_selX rho r365)
        (by simpa using seg15_prefix_23_selY rho r366)
        hbrow23
  exact hr23

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

