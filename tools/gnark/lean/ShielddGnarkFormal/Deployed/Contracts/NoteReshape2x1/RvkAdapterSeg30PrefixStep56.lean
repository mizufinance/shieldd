import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas5
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

theorem seg30_prefix_step56 (rho : Nat -> Seg30.F)
    (r56 : Seg30.relationRow56 rho)
    (r527 : Seg30.relationRow527 rho)
    (r528 : Seg30.relationRow528 rho)
    (r529 : Seg30.relationRow529 rho)
    (r530 : Seg30.relationRow530 rho)
    (r531 : Seg30.relationRow531 rho)
    (hacc : onCurve (seg30RvkAcc rho 56)) :
    RvkFixedBaseLadder.FixedStepRel 56 (rho 28367)
      (seg30RvkAcc rho 56) (seg30RvkAcc rho (56 + 1)) := by
  have hbrow56 : (1*(rho 28367))*(1 + (-1)*(rho 28367)) = 0 := by
    simpa [Seg30.relationRow56] using r56
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX55 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY55 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr56 : RvkFixedBaseLadder.FixedStepRel 56 (rho 28367)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX55 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY55 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX56 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY56 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc56, seg30AccX56, seg30AccY56, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung56_wide (rho 28311 : Seg30.F) (rho 28367 : Seg30.F) (seg30AccX55 rho : Seg30.F) (seg30AccY55 rho : Seg30.F) (rho 28837 : Seg30.F) (rho 28838 : Seg30.F) (rho 28839 : Seg30.F) (rho 28840 : Seg30.F) (rho 28841 : Seg30.F) hinput
        (by simpa using seg30_prefix_56_v2 rho r527)
        (by simpa using seg30_prefix_56_addX rho r528)
        (by simpa using seg30_prefix_56_addY rho r529)
        (by simpa using seg30_prefix_56_selX rho r530)
        (by simpa using seg30_prefix_56_selY rho r531)
        hbrow56
  exact hr56

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

