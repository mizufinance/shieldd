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

theorem seg15_prefix_step75 (rho : Nat -> Seg15.F)
    (r75 : Seg15.relationRow75 rho)
    (r622 : Seg15.relationRow622 rho)
    (r623 : Seg15.relationRow623 rho)
    (r624 : Seg15.relationRow624 rho)
    (r625 : Seg15.relationRow625 rho)
    (r626 : Seg15.relationRow626 rho)
    (hacc : onCurve (seg15RvkAcc rho 75)) :
    RvkFixedBaseLadder.FixedStepRel 75 (rho 16205)
      (seg15RvkAcc rho 75) (seg15RvkAcc rho (75 + 1)) := by
  have hbrow75 : (1*(rho 16205))*(1 + (-1)*(rho 16205)) = 0 := by
    simpa [Seg15.relationRow75] using r75
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX74 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY74 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr75 : RvkFixedBaseLadder.FixedStepRel 75 (rho 16205)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX74 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY74 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX75 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY75 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc75, seg15AccX75, seg15AccY75, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung75_wide (rho 16130 : Seg15.F) (rho 16205 : Seg15.F) (seg15AccX74 rho : Seg15.F) (seg15AccY74 rho : Seg15.F) (rho 16751 : Seg15.F) (rho 16752 : Seg15.F) (rho 16753 : Seg15.F) (rho 16754 : Seg15.F) (rho 16755 : Seg15.F) hinput
        (by simpa using seg15_prefix_75_v2 rho r622)
        (by simpa using seg15_prefix_75_addX rho r623)
        (by simpa using seg15_prefix_75_addY rho r624)
        (by simpa using seg15_prefix_75_selX rho r625)
        (by simpa using seg15_prefix_75_selY rho r626)
        hbrow75
  exact hr75

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

