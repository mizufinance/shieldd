import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas0
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

theorem seg30_prefix_step9 (rho : Nat -> Seg30.F)
    (r9 : Seg30.relationRow9 rho)
    (r292 : Seg30.relationRow292 rho)
    (r293 : Seg30.relationRow293 rho)
    (r294 : Seg30.relationRow294 rho)
    (r295 : Seg30.relationRow295 rho)
    (r296 : Seg30.relationRow296 rho)
    (hacc : onCurve (seg30RvkAcc rho 9)) :
    RvkFixedBaseLadder.FixedStepRel 9 (rho 28320)
      (seg30RvkAcc rho 9) (seg30RvkAcc rho (9 + 1)) := by
  have hbrow9 : (1*(rho 28320))*(1 + (-1)*(rho 28320)) = 0 := by
    simpa [Seg30.relationRow9] using r9
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX8 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY8 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr9 : RvkFixedBaseLadder.FixedStepRel 9 (rho 28320)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX8 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY8 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX9 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY9 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc9, seg30AccX9, seg30AccY9, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung9_wide (rho 28311 : Seg30.F) (rho 28320 : Seg30.F) (seg30AccX8 rho : Seg30.F) (seg30AccY8 rho : Seg30.F) (rho 28602 : Seg30.F) (rho 28603 : Seg30.F) (rho 28604 : Seg30.F) (rho 28605 : Seg30.F) (rho 28606 : Seg30.F) hinput
        (by simpa using seg30_prefix_9_v2 rho r292)
        (by simpa using seg30_prefix_9_addX rho r293)
        (by simpa using seg30_prefix_9_addY rho r294)
        (by simpa using seg30_prefix_9_selX rho r295)
        (by simpa using seg30_prefix_9_selY rho r296)
        hbrow9
  exact hr9

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

