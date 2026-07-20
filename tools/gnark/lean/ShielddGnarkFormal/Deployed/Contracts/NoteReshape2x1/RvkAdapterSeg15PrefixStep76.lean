import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas7
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

theorem seg15_prefix_step76 (rho : Nat -> Seg15.F)
    (r76 : Seg15.relationRow76 rho)
    (r627 : Seg15.relationRow627 rho)
    (r628 : Seg15.relationRow628 rho)
    (r629 : Seg15.relationRow629 rho)
    (r630 : Seg15.relationRow630 rho)
    (r631 : Seg15.relationRow631 rho)
    (hacc : onCurve (seg15RvkAcc rho 76)) :
    RvkFixedBaseLadder.FixedStepRel 76 (rho 16206)
      (seg15RvkAcc rho 76) (seg15RvkAcc rho (76 + 1)) := by
  have hbrow76 : (1*(rho 16206))*(1 + (-1)*(rho 16206)) = 0 := by
    simpa [Seg15.relationRow76] using r76
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX75 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY75 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr76 : RvkFixedBaseLadder.FixedStepRel 76 (rho 16206)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX75 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY75 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX76 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY76 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc76, seg15AccX76, seg15AccY76, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung76_wide (rho 16130 : Seg15.F) (rho 16206 : Seg15.F) (seg15AccX75 rho : Seg15.F) (seg15AccY75 rho : Seg15.F) (rho 16756 : Seg15.F) (rho 16757 : Seg15.F) (rho 16758 : Seg15.F) (rho 16759 : Seg15.F) (rho 16760 : Seg15.F) hinput
        (by simpa using seg15_prefix_76_v2 rho r627)
        (by simpa using seg15_prefix_76_addX rho r628)
        (by simpa using seg15_prefix_76_addY rho r629)
        (by simpa using seg15_prefix_76_selX rho r630)
        (by simpa using seg15_prefix_76_selY rho r631)
        hbrow76
  exact hr76

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

