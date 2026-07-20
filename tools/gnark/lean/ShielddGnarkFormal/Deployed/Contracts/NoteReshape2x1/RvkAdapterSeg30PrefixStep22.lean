import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas2
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

theorem seg30_prefix_step22 (rho : Nat -> Seg30.F)
    (r22 : Seg30.relationRow22 rho)
    (r357 : Seg30.relationRow357 rho)
    (r358 : Seg30.relationRow358 rho)
    (r359 : Seg30.relationRow359 rho)
    (r360 : Seg30.relationRow360 rho)
    (r361 : Seg30.relationRow361 rho)
    (hacc : onCurve (seg30RvkAcc rho 22)) :
    RvkFixedBaseLadder.FixedStepRel 22 (rho 28333)
      (seg30RvkAcc rho 22) (seg30RvkAcc rho (22 + 1)) := by
  have hbrow22 : (1*(rho 28333))*(1 + (-1)*(rho 28333)) = 0 := by
    simpa [Seg30.relationRow22] using r22
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX21 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY21 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr22 : RvkFixedBaseLadder.FixedStepRel 22 (rho 28333)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX21 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY21 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX22 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY22 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc22, seg30AccX22, seg30AccY22, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung22_wide (rho 28311 : Seg30.F) (rho 28333 : Seg30.F) (seg30AccX21 rho : Seg30.F) (seg30AccY21 rho : Seg30.F) (rho 28667 : Seg30.F) (rho 28668 : Seg30.F) (rho 28669 : Seg30.F) (rho 28670 : Seg30.F) (rho 28671 : Seg30.F) hinput
        (by simpa using seg30_prefix_22_v2 rho r357)
        (by simpa using seg30_prefix_22_addX rho r358)
        (by simpa using seg30_prefix_22_addY rho r359)
        (by simpa using seg30_prefix_22_selX rho r360)
        (by simpa using seg30_prefix_22_selY rho r361)
        hbrow22
  exact hr22

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

