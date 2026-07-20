import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas12
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

theorem seg30_prefix_step125 (rho : Nat -> Seg30.F)
    (r125 : Seg30.relationRow125 rho)
    (r872 : Seg30.relationRow872 rho)
    (r873 : Seg30.relationRow873 rho)
    (r874 : Seg30.relationRow874 rho)
    (r875 : Seg30.relationRow875 rho)
    (r876 : Seg30.relationRow876 rho)
    (hacc : onCurve (seg30RvkAcc rho 125)) :
    RvkFixedBaseLadder.FixedStepRel 125 (rho 28436)
      (seg30RvkAcc rho 125) (seg30RvkAcc rho (125 + 1)) := by
  have hbrow125 : (1*(rho 28436))*(1 + (-1)*(rho 28436)) = 0 := by
    simpa [Seg30.relationRow125] using r125
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX124 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY124 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr125 : RvkFixedBaseLadder.FixedStepRel 125 (rho 28436)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX124 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY124 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX125 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY125 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc125, seg30AccX125, seg30AccY125, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung125_wide (rho 28311 : Seg30.F) (rho 28436 : Seg30.F) (seg30AccX124 rho : Seg30.F) (seg30AccY124 rho : Seg30.F) (rho 29182 : Seg30.F) (rho 29183 : Seg30.F) (rho 29184 : Seg30.F) (rho 29185 : Seg30.F) (rho 29186 : Seg30.F) hinput
        (by simpa using seg30_prefix_125_v2 rho r872)
        (by simpa using seg30_prefix_125_addX rho r873)
        (by simpa using seg30_prefix_125_addY rho r874)
        (by simpa using seg30_prefix_125_selX rho r875)
        (by simpa using seg30_prefix_125_selY rho r876)
        hbrow125
  exact hr125

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

