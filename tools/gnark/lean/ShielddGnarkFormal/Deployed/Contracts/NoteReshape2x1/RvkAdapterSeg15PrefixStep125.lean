import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas12
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

theorem seg15_prefix_step125 (rho : Nat -> Seg15.F)
    (r125 : Seg15.relationRow125 rho)
    (r872 : Seg15.relationRow872 rho)
    (r873 : Seg15.relationRow873 rho)
    (r874 : Seg15.relationRow874 rho)
    (r875 : Seg15.relationRow875 rho)
    (r876 : Seg15.relationRow876 rho)
    (hacc : onCurve (seg15RvkAcc rho 125)) :
    RvkFixedBaseLadder.FixedStepRel 125 (rho 16261)
      (seg15RvkAcc rho 125) (seg15RvkAcc rho (125 + 1)) := by
  have hbrow125 : (1*(rho 16261))*(1 + (-1)*(rho 16261)) = 0 := by
    simpa [Seg15.relationRow125] using r125
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX124 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY124 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr125 : RvkFixedBaseLadder.FixedStepRel 125 (rho 16261)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX124 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY124 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX125 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY125 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc125, seg15AccX125, seg15AccY125, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung125_wide (rho 16136 : Seg15.F) (rho 16261 : Seg15.F) (seg15AccX124 rho : Seg15.F) (seg15AccY124 rho : Seg15.F) (rho 17007 : Seg15.F) (rho 17008 : Seg15.F) (rho 17009 : Seg15.F) (rho 17010 : Seg15.F) (rho 17011 : Seg15.F) hinput
        (by simpa using seg15_prefix_125_v2 rho r872)
        (by simpa using seg15_prefix_125_addX rho r873)
        (by simpa using seg15_prefix_125_addY rho r874)
        (by simpa using seg15_prefix_125_selX rho r875)
        (by simpa using seg15_prefix_125_selY rho r876)
        hbrow125
  exact hr125

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

