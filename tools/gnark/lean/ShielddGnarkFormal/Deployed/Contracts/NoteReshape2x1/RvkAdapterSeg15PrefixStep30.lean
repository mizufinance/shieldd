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

theorem seg15_prefix_step30 (rho : Nat -> Seg15.F)
    (r30 : Seg15.relationRow30 rho)
    (r397 : Seg15.relationRow397 rho)
    (r398 : Seg15.relationRow398 rho)
    (r399 : Seg15.relationRow399 rho)
    (r400 : Seg15.relationRow400 rho)
    (r401 : Seg15.relationRow401 rho)
    (hacc : onCurve (seg15RvkAcc rho 30)) :
    RvkFixedBaseLadder.FixedStepRel 30 (rho 16166)
      (seg15RvkAcc rho 30) (seg15RvkAcc rho (30 + 1)) := by
  have hbrow30 : (1*(rho 16166))*(1 + (-1)*(rho 16166)) = 0 := by
    simpa [Seg15.relationRow30] using r30
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX29 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY29 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr30 : RvkFixedBaseLadder.FixedStepRel 30 (rho 16166)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX29 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY29 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX30 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY30 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc30, seg15AccX30, seg15AccY30, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung30_wide (rho 16136 : Seg15.F) (rho 16166 : Seg15.F) (seg15AccX29 rho : Seg15.F) (seg15AccY29 rho : Seg15.F) (rho 16532 : Seg15.F) (rho 16533 : Seg15.F) (rho 16534 : Seg15.F) (rho 16535 : Seg15.F) (rho 16536 : Seg15.F) hinput
        (by simpa using seg15_prefix_30_v2 rho r397)
        (by simpa using seg15_prefix_30_addX rho r398)
        (by simpa using seg15_prefix_30_addY rho r399)
        (by simpa using seg15_prefix_30_selX rho r400)
        (by simpa using seg15_prefix_30_selY rho r401)
        hbrow30
  exact hr30

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

