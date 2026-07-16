import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas1
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

theorem seg30_prefix_step16 (rho : Nat -> Seg30.F)
    (r16 : Seg30.relationRow16 rho)
    (r327 : Seg30.relationRow327 rho)
    (r328 : Seg30.relationRow328 rho)
    (r329 : Seg30.relationRow329 rho)
    (r330 : Seg30.relationRow330 rho)
    (r331 : Seg30.relationRow331 rho)
    (hacc : onCurve (seg30RvkAcc rho 16)) :
    RvkFixedBaseLadder.FixedStepRel 16 (rho 28333)
      (seg30RvkAcc rho 16) (seg30RvkAcc rho (16 + 1)) := by
  have hbrow16 : (1*(rho 28333))*(1 + (-1)*(rho 28333)) = 0 := by
    simpa [Seg30.relationRow16] using r16
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX15 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY15 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr16 : RvkFixedBaseLadder.FixedStepRel 16 (rho 28333)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX15 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY15 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX16 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY16 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc16, seg30AccX16, seg30AccY16, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung16_wide (rho 28317 : Seg30.F) (rho 28333 : Seg30.F) (seg30AccX15 rho : Seg30.F) (seg30AccY15 rho : Seg30.F) (rho 28643 : Seg30.F) (rho 28644 : Seg30.F) (rho 28645 : Seg30.F) (rho 28646 : Seg30.F) (rho 28647 : Seg30.F) hinput
        (by simpa using seg30_prefix_16_v2 rho r327)
        (by simpa using seg30_prefix_16_addX rho r328)
        (by simpa using seg30_prefix_16_addY rho r329)
        (by simpa using seg30_prefix_16_selX rho r330)
        (by simpa using seg30_prefix_16_selY rho r331)
        hbrow16
  exact hr16

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

