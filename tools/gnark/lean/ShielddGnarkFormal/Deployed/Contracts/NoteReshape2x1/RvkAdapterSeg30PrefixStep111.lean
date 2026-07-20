import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas11
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

theorem seg30_prefix_step111 (rho : Nat -> Seg30.F)
    (r111 : Seg30.relationRow111 rho)
    (r802 : Seg30.relationRow802 rho)
    (r803 : Seg30.relationRow803 rho)
    (r804 : Seg30.relationRow804 rho)
    (r805 : Seg30.relationRow805 rho)
    (r806 : Seg30.relationRow806 rho)
    (hacc : onCurve (seg30RvkAcc rho 111)) :
    RvkFixedBaseLadder.FixedStepRel 111 (rho 28422)
      (seg30RvkAcc rho 111) (seg30RvkAcc rho (111 + 1)) := by
  have hbrow111 : (1*(rho 28422))*(1 + (-1)*(rho 28422)) = 0 := by
    simpa [Seg30.relationRow111] using r111
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX110 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY110 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr111 : RvkFixedBaseLadder.FixedStepRel 111 (rho 28422)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX110 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY110 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX111 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY111 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc111, seg30AccX111, seg30AccY111, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung111_wide (rho 28311 : Seg30.F) (rho 28422 : Seg30.F) (seg30AccX110 rho : Seg30.F) (seg30AccY110 rho : Seg30.F) (rho 29112 : Seg30.F) (rho 29113 : Seg30.F) (rho 29114 : Seg30.F) (rho 29115 : Seg30.F) (rho 29116 : Seg30.F) hinput
        (by simpa using seg30_prefix_111_v2 rho r802)
        (by simpa using seg30_prefix_111_addX rho r803)
        (by simpa using seg30_prefix_111_addY rho r804)
        (by simpa using seg30_prefix_111_selX rho r805)
        (by simpa using seg30_prefix_111_selY rho r806)
        hbrow111
  exact hr111

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

