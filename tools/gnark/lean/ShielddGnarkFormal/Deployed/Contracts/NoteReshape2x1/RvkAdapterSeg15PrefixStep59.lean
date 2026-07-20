import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas5
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

theorem seg15_prefix_step59 (rho : Nat -> Seg15.F)
    (r59 : Seg15.relationRow59 rho)
    (r542 : Seg15.relationRow542 rho)
    (r543 : Seg15.relationRow543 rho)
    (r544 : Seg15.relationRow544 rho)
    (r545 : Seg15.relationRow545 rho)
    (r546 : Seg15.relationRow546 rho)
    (hacc : onCurve (seg15RvkAcc rho 59)) :
    RvkFixedBaseLadder.FixedStepRel 59 (rho 16189)
      (seg15RvkAcc rho 59) (seg15RvkAcc rho (59 + 1)) := by
  have hbrow59 : (1*(rho 16189))*(1 + (-1)*(rho 16189)) = 0 := by
    simpa [Seg15.relationRow59] using r59
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX58 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY58 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr59 : RvkFixedBaseLadder.FixedStepRel 59 (rho 16189)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX58 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY58 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX59 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY59 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc59, seg15AccX59, seg15AccY59, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung59_wide (rho 16130 : Seg15.F) (rho 16189 : Seg15.F) (seg15AccX58 rho : Seg15.F) (seg15AccY58 rho : Seg15.F) (rho 16671 : Seg15.F) (rho 16672 : Seg15.F) (rho 16673 : Seg15.F) (rho 16674 : Seg15.F) (rho 16675 : Seg15.F) hinput
        (by simpa using seg15_prefix_59_v2 rho r542)
        (by simpa using seg15_prefix_59_addX rho r543)
        (by simpa using seg15_prefix_59_addY rho r544)
        (by simpa using seg15_prefix_59_selX rho r545)
        (by simpa using seg15_prefix_59_selY rho r546)
        hbrow59
  exact hr59

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

