import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas0
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

theorem seg15_prefix_step3 (rho : Nat -> Seg15.F)
    (r3 : Seg15.relationRow3 rho)
    (r262 : Seg15.relationRow262 rho)
    (r263 : Seg15.relationRow263 rho)
    (r264 : Seg15.relationRow264 rho)
    (r265 : Seg15.relationRow265 rho)
    (r266 : Seg15.relationRow266 rho)
    (hacc : onCurve (seg15RvkAcc rho 3)) :
    RvkFixedBaseLadder.FixedStepRel 3 (rho 16133)
      (seg15RvkAcc rho 3) (seg15RvkAcc rho (3 + 1)) := by
  have hbrow3 : (1*(rho 16133))*(1 + (-1)*(rho 16133)) = 0 := by
    simpa [Seg15.relationRow3] using r3
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX2 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY2 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr3 : RvkFixedBaseLadder.FixedStepRel 3 (rho 16133)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX2 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY2 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX3 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY3 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc3, seg15AccX3, seg15AccY3, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung3_wide (rho 16130 : Seg15.F) (rho 16133 : Seg15.F) (seg15AccX2 rho : Seg15.F) (seg15AccY2 rho : Seg15.F) (rho 16391 : Seg15.F) (rho 16392 : Seg15.F) (rho 16393 : Seg15.F) (rho 16394 : Seg15.F) (rho 16395 : Seg15.F) hinput
        (by simpa using seg15_prefix_3_v2 rho r262)
        (by simpa using seg15_prefix_3_addX rho r263)
        (by simpa using seg15_prefix_3_addY rho r264)
        (by simpa using seg15_prefix_3_selX rho r265)
        (by simpa using seg15_prefix_3_selY rho r266)
        hbrow3
  exact hr3

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

