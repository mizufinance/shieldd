import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas12
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

theorem seg15_prefix_step130 (rho : Nat -> Seg15.F)
    (r130 : Seg15.relationRow130 rho)
    (r897 : Seg15.relationRow897 rho)
    (r898 : Seg15.relationRow898 rho)
    (r899 : Seg15.relationRow899 rho)
    (r900 : Seg15.relationRow900 rho)
    (r901 : Seg15.relationRow901 rho)
    (hacc : onCurve (seg15RvkAcc rho 130)) :
    RvkFixedBaseLadder.FixedStepRel 130 (rho 16260)
      (seg15RvkAcc rho 130) (seg15RvkAcc rho (130 + 1)) := by
  have hbrow130 : (1*(rho 16260))*(1 + (-1)*(rho 16260)) = 0 := by
    simpa [Seg15.relationRow130] using r130
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX129 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY129 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr130 : RvkFixedBaseLadder.FixedStepRel 130 (rho 16260)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX129 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY129 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX130 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY130 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc130, seg15AccX130, seg15AccY130, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung130_wide (rho 16130 : Seg15.F) (rho 16260 : Seg15.F) (seg15AccX129 rho : Seg15.F) (seg15AccY129 rho : Seg15.F) (rho 17026 : Seg15.F) (rho 17027 : Seg15.F) (rho 17028 : Seg15.F) (rho 17029 : Seg15.F) (rho 17030 : Seg15.F) hinput
        (by simpa using seg15_prefix_130_v2 rho r897)
        (by simpa using seg15_prefix_130_addX rho r898)
        (by simpa using seg15_prefix_130_addY rho r899)
        (by simpa using seg15_prefix_130_selX rho r900)
        (by simpa using seg15_prefix_130_selY rho r901)
        hbrow130
  exact hr130

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

