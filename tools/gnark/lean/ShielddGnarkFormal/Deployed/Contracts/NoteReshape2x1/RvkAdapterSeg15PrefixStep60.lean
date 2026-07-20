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

theorem seg15_prefix_step60 (rho : Nat -> Seg15.F)
    (r60 : Seg15.relationRow60 rho)
    (r547 : Seg15.relationRow547 rho)
    (r548 : Seg15.relationRow548 rho)
    (r549 : Seg15.relationRow549 rho)
    (r550 : Seg15.relationRow550 rho)
    (r551 : Seg15.relationRow551 rho)
    (hacc : onCurve (seg15RvkAcc rho 60)) :
    RvkFixedBaseLadder.FixedStepRel 60 (rho 16190)
      (seg15RvkAcc rho 60) (seg15RvkAcc rho (60 + 1)) := by
  have hbrow60 : (1*(rho 16190))*(1 + (-1)*(rho 16190)) = 0 := by
    simpa [Seg15.relationRow60] using r60
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX59 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY59 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr60 : RvkFixedBaseLadder.FixedStepRel 60 (rho 16190)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX59 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY59 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX60 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY60 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc60, seg15AccX60, seg15AccY60, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung60_wide (rho 16130 : Seg15.F) (rho 16190 : Seg15.F) (seg15AccX59 rho : Seg15.F) (seg15AccY59 rho : Seg15.F) (rho 16676 : Seg15.F) (rho 16677 : Seg15.F) (rho 16678 : Seg15.F) (rho 16679 : Seg15.F) (rho 16680 : Seg15.F) hinput
        (by simpa using seg15_prefix_60_v2 rho r547)
        (by simpa using seg15_prefix_60_addX rho r548)
        (by simpa using seg15_prefix_60_addY rho r549)
        (by simpa using seg15_prefix_60_selX rho r550)
        (by simpa using seg15_prefix_60_selY rho r551)
        hbrow60
  exact hr60

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

