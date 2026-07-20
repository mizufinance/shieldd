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

theorem seg15_prefix_step14 (rho : Nat -> Seg15.F)
    (r14 : Seg15.relationRow14 rho)
    (r317 : Seg15.relationRow317 rho)
    (r318 : Seg15.relationRow318 rho)
    (r319 : Seg15.relationRow319 rho)
    (r320 : Seg15.relationRow320 rho)
    (r321 : Seg15.relationRow321 rho)
    (hacc : onCurve (seg15RvkAcc rho 14)) :
    RvkFixedBaseLadder.FixedStepRel 14 (rho 16144)
      (seg15RvkAcc rho 14) (seg15RvkAcc rho (14 + 1)) := by
  have hbrow14 : (1*(rho 16144))*(1 + (-1)*(rho 16144)) = 0 := by
    simpa [Seg15.relationRow14] using r14
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX13 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY13 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr14 : RvkFixedBaseLadder.FixedStepRel 14 (rho 16144)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX13 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY13 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX14 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY14 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc14, seg15AccX14, seg15AccY14, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung14_wide (rho 16130 : Seg15.F) (rho 16144 : Seg15.F) (seg15AccX13 rho : Seg15.F) (seg15AccY13 rho : Seg15.F) (rho 16446 : Seg15.F) (rho 16447 : Seg15.F) (rho 16448 : Seg15.F) (rho 16449 : Seg15.F) (rho 16450 : Seg15.F) hinput
        (by simpa using seg15_prefix_14_v2 rho r317)
        (by simpa using seg15_prefix_14_addX rho r318)
        (by simpa using seg15_prefix_14_addY rho r319)
        (by simpa using seg15_prefix_14_selX rho r320)
        (by simpa using seg15_prefix_14_selY rho r321)
        hbrow14
  exact hr14

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

