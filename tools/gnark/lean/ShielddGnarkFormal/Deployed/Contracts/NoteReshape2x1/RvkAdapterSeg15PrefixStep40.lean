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

theorem seg15_prefix_step40 (rho : Nat -> Seg15.F)
    (r40 : Seg15.relationRow40 rho)
    (r447 : Seg15.relationRow447 rho)
    (r448 : Seg15.relationRow448 rho)
    (r449 : Seg15.relationRow449 rho)
    (r450 : Seg15.relationRow450 rho)
    (r451 : Seg15.relationRow451 rho)
    (hacc : onCurve (seg15RvkAcc rho 40)) :
    RvkFixedBaseLadder.FixedStepRel 40 (rho 16170)
      (seg15RvkAcc rho 40) (seg15RvkAcc rho (40 + 1)) := by
  have hbrow40 : (1*(rho 16170))*(1 + (-1)*(rho 16170)) = 0 := by
    simpa [Seg15.relationRow40] using r40
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX39 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY39 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr40 : RvkFixedBaseLadder.FixedStepRel 40 (rho 16170)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX39 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY39 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX40 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY40 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc40, seg15AccX40, seg15AccY40, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung40_wide (rho 16130 : Seg15.F) (rho 16170 : Seg15.F) (seg15AccX39 rho : Seg15.F) (seg15AccY39 rho : Seg15.F) (rho 16576 : Seg15.F) (rho 16577 : Seg15.F) (rho 16578 : Seg15.F) (rho 16579 : Seg15.F) (rho 16580 : Seg15.F) hinput
        (by simpa using seg15_prefix_40_v2 rho r447)
        (by simpa using seg15_prefix_40_addX rho r448)
        (by simpa using seg15_prefix_40_addY rho r449)
        (by simpa using seg15_prefix_40_selX rho r450)
        (by simpa using seg15_prefix_40_selY rho r451)
        hbrow40
  exact hr40

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

