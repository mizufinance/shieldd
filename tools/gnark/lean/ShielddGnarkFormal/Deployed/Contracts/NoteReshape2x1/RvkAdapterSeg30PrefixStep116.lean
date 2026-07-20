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

theorem seg30_prefix_step116 (rho : Nat -> Seg30.F)
    (r116 : Seg30.relationRow116 rho)
    (r827 : Seg30.relationRow827 rho)
    (r828 : Seg30.relationRow828 rho)
    (r829 : Seg30.relationRow829 rho)
    (r830 : Seg30.relationRow830 rho)
    (r831 : Seg30.relationRow831 rho)
    (hacc : onCurve (seg30RvkAcc rho 116)) :
    RvkFixedBaseLadder.FixedStepRel 116 (rho 28427)
      (seg30RvkAcc rho 116) (seg30RvkAcc rho (116 + 1)) := by
  have hbrow116 : (1*(rho 28427))*(1 + (-1)*(rho 28427)) = 0 := by
    simpa [Seg30.relationRow116] using r116
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX115 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY115 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr116 : RvkFixedBaseLadder.FixedStepRel 116 (rho 28427)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX115 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY115 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX116 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY116 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc116, seg30AccX116, seg30AccY116, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung116_wide (rho 28311 : Seg30.F) (rho 28427 : Seg30.F) (seg30AccX115 rho : Seg30.F) (seg30AccY115 rho : Seg30.F) (rho 29137 : Seg30.F) (rho 29138 : Seg30.F) (rho 29139 : Seg30.F) (rho 29140 : Seg30.F) (rho 29141 : Seg30.F) hinput
        (by simpa using seg30_prefix_116_v2 rho r827)
        (by simpa using seg30_prefix_116_addX rho r828)
        (by simpa using seg30_prefix_116_addY rho r829)
        (by simpa using seg30_prefix_116_selX rho r830)
        (by simpa using seg30_prefix_116_selY rho r831)
        hbrow116
  exact hr116

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

