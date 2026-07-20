import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas10
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

theorem seg30_prefix_step109 (rho : Nat -> Seg30.F)
    (r109 : Seg30.relationRow109 rho)
    (r792 : Seg30.relationRow792 rho)
    (r793 : Seg30.relationRow793 rho)
    (r794 : Seg30.relationRow794 rho)
    (r795 : Seg30.relationRow795 rho)
    (r796 : Seg30.relationRow796 rho)
    (hacc : onCurve (seg30RvkAcc rho 109)) :
    RvkFixedBaseLadder.FixedStepRel 109 (rho 28420)
      (seg30RvkAcc rho 109) (seg30RvkAcc rho (109 + 1)) := by
  have hbrow109 : (1*(rho 28420))*(1 + (-1)*(rho 28420)) = 0 := by
    simpa [Seg30.relationRow109] using r109
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX108 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY108 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr109 : RvkFixedBaseLadder.FixedStepRel 109 (rho 28420)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX108 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY108 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX109 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY109 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc109, seg30AccX109, seg30AccY109, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung109_wide (rho 28311 : Seg30.F) (rho 28420 : Seg30.F) (seg30AccX108 rho : Seg30.F) (seg30AccY108 rho : Seg30.F) (rho 29102 : Seg30.F) (rho 29103 : Seg30.F) (rho 29104 : Seg30.F) (rho 29105 : Seg30.F) (rho 29106 : Seg30.F) hinput
        (by simpa using seg30_prefix_109_v2 rho r792)
        (by simpa using seg30_prefix_109_addX rho r793)
        (by simpa using seg30_prefix_109_addY rho r794)
        (by simpa using seg30_prefix_109_selX rho r795)
        (by simpa using seg30_prefix_109_selY rho r796)
        hbrow109
  exact hr109

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

