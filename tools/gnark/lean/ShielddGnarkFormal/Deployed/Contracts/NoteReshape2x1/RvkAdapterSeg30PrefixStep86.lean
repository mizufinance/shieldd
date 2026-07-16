import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas8
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step86 (rho : Nat -> Seg30.F)
    (r86 : Seg30.relationRow86 rho)
    (r677 : Seg30.relationRow677 rho)
    (r678 : Seg30.relationRow678 rho)
    (r679 : Seg30.relationRow679 rho)
    (r680 : Seg30.relationRow680 rho)
    (r681 : Seg30.relationRow681 rho)
    (hacc : onCurve (seg30RvkAcc rho 86)) :
    RvkFixedBaseLadder.FixedStepRel 86 (rho 28403)
      (seg30RvkAcc rho 86) (seg30RvkAcc rho (86 + 1)) := by
  have hbrow86 : (1*(rho 28403))*(1 + (-1)*(rho 28403)) = 0 := by
    simpa [Seg30.relationRow86] using r86
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX85 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY85 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr86 : RvkFixedBaseLadder.FixedStepRel 86 (rho 28403)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX85 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY85 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX86 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY86 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc86, seg30AccX86, seg30AccY86, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung86_wide (rho 28317 : Seg30.F) (rho 28403 : Seg30.F) (seg30AccX85 rho : Seg30.F) (seg30AccY85 rho : Seg30.F) (rho 28993 : Seg30.F) (rho 28994 : Seg30.F) (rho 28995 : Seg30.F) (rho 28996 : Seg30.F) (rho 28997 : Seg30.F) hinput
        (by simpa using seg30_prefix_86_v2 rho r677)
        (by simpa using seg30_prefix_86_addX rho r678)
        (by simpa using seg30_prefix_86_addY rho r679)
        (by simpa using seg30_prefix_86_selX rho r680)
        (by simpa using seg30_prefix_86_selY rho r681)
        hbrow86
  exact hr86

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

