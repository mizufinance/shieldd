import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas11
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

theorem seg15_prefix_step119 (rho : Nat -> Seg15.F)
    (r119 : Seg15.relationRow119 rho)
    (r842 : Seg15.relationRow842 rho)
    (r843 : Seg15.relationRow843 rho)
    (r844 : Seg15.relationRow844 rho)
    (r845 : Seg15.relationRow845 rho)
    (r846 : Seg15.relationRow846 rho)
    (hacc : onCurve (seg15RvkAcc rho 119)) :
    RvkFixedBaseLadder.FixedStepRel 119 (rho 16255)
      (seg15RvkAcc rho 119) (seg15RvkAcc rho (119 + 1)) := by
  have hbrow119 : (1*(rho 16255))*(1 + (-1)*(rho 16255)) = 0 := by
    simpa [Seg15.relationRow119] using r119
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX118 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY118 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr119 : RvkFixedBaseLadder.FixedStepRel 119 (rho 16255)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX118 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY118 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX119 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY119 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc119, seg15AccX119, seg15AccY119, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung119_wide (rho 16136 : Seg15.F) (rho 16255 : Seg15.F) (seg15AccX118 rho : Seg15.F) (seg15AccY118 rho : Seg15.F) (rho 16977 : Seg15.F) (rho 16978 : Seg15.F) (rho 16979 : Seg15.F) (rho 16980 : Seg15.F) (rho 16981 : Seg15.F) hinput
        (by simpa using seg15_prefix_119_v2 rho r842)
        (by simpa using seg15_prefix_119_addX rho r843)
        (by simpa using seg15_prefix_119_addY rho r844)
        (by simpa using seg15_prefix_119_selX rho r845)
        (by simpa using seg15_prefix_119_selY rho r846)
        hbrow119
  exact hr119

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

