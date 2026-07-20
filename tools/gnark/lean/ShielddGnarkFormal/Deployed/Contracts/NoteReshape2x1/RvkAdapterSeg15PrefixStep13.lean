import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas1
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

theorem seg15_prefix_step13 (rho : Nat -> Seg15.F)
    (r13 : Seg15.relationRow13 rho)
    (r312 : Seg15.relationRow312 rho)
    (r313 : Seg15.relationRow313 rho)
    (r314 : Seg15.relationRow314 rho)
    (r315 : Seg15.relationRow315 rho)
    (r316 : Seg15.relationRow316 rho)
    (hacc : onCurve (seg15RvkAcc rho 13)) :
    RvkFixedBaseLadder.FixedStepRel 13 (rho 16143)
      (seg15RvkAcc rho 13) (seg15RvkAcc rho (13 + 1)) := by
  have hbrow13 : (1*(rho 16143))*(1 + (-1)*(rho 16143)) = 0 := by
    simpa [Seg15.relationRow13] using r13
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX12 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY12 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr13 : RvkFixedBaseLadder.FixedStepRel 13 (rho 16143)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX12 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY12 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX13 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY13 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc13, seg15AccX13, seg15AccY13, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung13_wide (rho 16130 : Seg15.F) (rho 16143 : Seg15.F) (seg15AccX12 rho : Seg15.F) (seg15AccY12 rho : Seg15.F) (rho 16441 : Seg15.F) (rho 16442 : Seg15.F) (rho 16443 : Seg15.F) (rho 16444 : Seg15.F) (rho 16445 : Seg15.F) hinput
        (by simpa using seg15_prefix_13_v2 rho r312)
        (by simpa using seg15_prefix_13_addX rho r313)
        (by simpa using seg15_prefix_13_addY rho r314)
        (by simpa using seg15_prefix_13_selX rho r315)
        (by simpa using seg15_prefix_13_selY rho r316)
        hbrow13
  exact hr13

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

