import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas6
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

theorem seg15_prefix_step67 (rho : Nat -> Seg15.F)
    (r67 : Seg15.relationRow67 rho)
    (r582 : Seg15.relationRow582 rho)
    (r583 : Seg15.relationRow583 rho)
    (r584 : Seg15.relationRow584 rho)
    (r585 : Seg15.relationRow585 rho)
    (r586 : Seg15.relationRow586 rho)
    (hacc : onCurve (seg15RvkAcc rho 67)) :
    RvkFixedBaseLadder.FixedStepRel 67 (rho 16197)
      (seg15RvkAcc rho 67) (seg15RvkAcc rho (67 + 1)) := by
  have hbrow67 : (1*(rho 16197))*(1 + (-1)*(rho 16197)) = 0 := by
    simpa [Seg15.relationRow67] using r67
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX66 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY66 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr67 : RvkFixedBaseLadder.FixedStepRel 67 (rho 16197)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX66 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY66 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX67 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY67 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc67, seg15AccX67, seg15AccY67, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung67_wide (rho 16130 : Seg15.F) (rho 16197 : Seg15.F) (seg15AccX66 rho : Seg15.F) (seg15AccY66 rho : Seg15.F) (rho 16711 : Seg15.F) (rho 16712 : Seg15.F) (rho 16713 : Seg15.F) (rho 16714 : Seg15.F) (rho 16715 : Seg15.F) hinput
        (by simpa using seg15_prefix_67_v2 rho r582)
        (by simpa using seg15_prefix_67_addX rho r583)
        (by simpa using seg15_prefix_67_addY rho r584)
        (by simpa using seg15_prefix_67_selX rho r585)
        (by simpa using seg15_prefix_67_selY rho r586)
        hbrow67
  exact hr67

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

