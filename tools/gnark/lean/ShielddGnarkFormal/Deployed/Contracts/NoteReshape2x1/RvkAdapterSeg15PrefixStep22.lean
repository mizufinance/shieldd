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

theorem seg15_prefix_step22 (rho : Nat -> Seg15.F)
    (r22 : Seg15.relationRow22 rho)
    (r357 : Seg15.relationRow357 rho)
    (r358 : Seg15.relationRow358 rho)
    (r359 : Seg15.relationRow359 rho)
    (r360 : Seg15.relationRow360 rho)
    (r361 : Seg15.relationRow361 rho)
    (hacc : onCurve (seg15RvkAcc rho 22)) :
    RvkFixedBaseLadder.FixedStepRel 22 (rho 16152)
      (seg15RvkAcc rho 22) (seg15RvkAcc rho (22 + 1)) := by
  have hbrow22 : (1*(rho 16152))*(1 + (-1)*(rho 16152)) = 0 := by
    simpa [Seg15.relationRow22] using r22
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX21 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY21 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr22 : RvkFixedBaseLadder.FixedStepRel 22 (rho 16152)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX21 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY21 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX22 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY22 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc22, seg15AccX22, seg15AccY22, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung22_wide (rho 16130 : Seg15.F) (rho 16152 : Seg15.F) (seg15AccX21 rho : Seg15.F) (seg15AccY21 rho : Seg15.F) (rho 16486 : Seg15.F) (rho 16487 : Seg15.F) (rho 16488 : Seg15.F) (rho 16489 : Seg15.F) (rho 16490 : Seg15.F) hinput
        (by simpa using seg15_prefix_22_v2 rho r357)
        (by simpa using seg15_prefix_22_addX rho r358)
        (by simpa using seg15_prefix_22_addY rho r359)
        (by simpa using seg15_prefix_22_selX rho r360)
        (by simpa using seg15_prefix_22_selY rho r361)
        hbrow22
  exact hr22

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

