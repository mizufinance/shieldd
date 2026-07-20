import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas8
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

theorem seg15_prefix_step86 (rho : Nat -> Seg15.F)
    (r86 : Seg15.relationRow86 rho)
    (r677 : Seg15.relationRow677 rho)
    (r678 : Seg15.relationRow678 rho)
    (r679 : Seg15.relationRow679 rho)
    (r680 : Seg15.relationRow680 rho)
    (r681 : Seg15.relationRow681 rho)
    (hacc : onCurve (seg15RvkAcc rho 86)) :
    RvkFixedBaseLadder.FixedStepRel 86 (rho 16216)
      (seg15RvkAcc rho 86) (seg15RvkAcc rho (86 + 1)) := by
  have hbrow86 : (1*(rho 16216))*(1 + (-1)*(rho 16216)) = 0 := by
    simpa [Seg15.relationRow86] using r86
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX85 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY85 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr86 : RvkFixedBaseLadder.FixedStepRel 86 (rho 16216)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX85 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY85 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX86 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY86 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc86, seg15AccX86, seg15AccY86, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung86_wide (rho 16130 : Seg15.F) (rho 16216 : Seg15.F) (seg15AccX85 rho : Seg15.F) (seg15AccY85 rho : Seg15.F) (rho 16806 : Seg15.F) (rho 16807 : Seg15.F) (rho 16808 : Seg15.F) (rho 16809 : Seg15.F) (rho 16810 : Seg15.F) hinput
        (by simpa using seg15_prefix_86_v2 rho r677)
        (by simpa using seg15_prefix_86_addX rho r678)
        (by simpa using seg15_prefix_86_addY rho r679)
        (by simpa using seg15_prefix_86_selX rho r680)
        (by simpa using seg15_prefix_86_selY rho r681)
        hbrow86
  exact hr86

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

