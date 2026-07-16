import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas2
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

theorem seg15_prefix_step26 (rho : Nat -> Seg15.F)
    (r26 : Seg15.relationRow26 rho)
    (r377 : Seg15.relationRow377 rho)
    (r378 : Seg15.relationRow378 rho)
    (r379 : Seg15.relationRow379 rho)
    (r380 : Seg15.relationRow380 rho)
    (r381 : Seg15.relationRow381 rho)
    (hacc : onCurve (seg15RvkAcc rho 26)) :
    RvkFixedBaseLadder.FixedStepRel 26 (rho 16162)
      (seg15RvkAcc rho 26) (seg15RvkAcc rho (26 + 1)) := by
  have hbrow26 : (1*(rho 16162))*(1 + (-1)*(rho 16162)) = 0 := by
    simpa [Seg15.relationRow26] using r26
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX25 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY25 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr26 : RvkFixedBaseLadder.FixedStepRel 26 (rho 16162)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX25 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY25 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX26 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY26 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc26, seg15AccX26, seg15AccY26, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung26_wide (rho 16136 : Seg15.F) (rho 16162 : Seg15.F) (seg15AccX25 rho : Seg15.F) (seg15AccY25 rho : Seg15.F) (rho 16512 : Seg15.F) (rho 16513 : Seg15.F) (rho 16514 : Seg15.F) (rho 16515 : Seg15.F) (rho 16516 : Seg15.F) hinput
        (by simpa using seg15_prefix_26_v2 rho r377)
        (by simpa using seg15_prefix_26_addX rho r378)
        (by simpa using seg15_prefix_26_addY rho r379)
        (by simpa using seg15_prefix_26_selX rho r380)
        (by simpa using seg15_prefix_26_selY rho r381)
        hbrow26
  exact hr26

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

