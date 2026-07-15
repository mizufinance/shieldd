import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas4
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_step50 (rho : Nat -> Seg15.F)
    (r50 : Seg15.relationRow50 rho)
    (r497 : Seg15.relationRow497 rho)
    (r498 : Seg15.relationRow498 rho)
    (r499 : Seg15.relationRow499 rho)
    (r500 : Seg15.relationRow500 rho)
    (r501 : Seg15.relationRow501 rho)
    (hacc : onCurve (seg15RvkAcc rho 50)) :
    RvkFixedBaseLadder.FixedStepRel 50 (rho 16186)
      (seg15RvkAcc rho 50) (seg15RvkAcc rho (50 + 1)) := by
  have hbrow50 : (1*(rho 16186))*(1 + (-1)*(rho 16186)) = 0 := by
    simpa [Seg15.relationRow50] using r50
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX49 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY49 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr50 : RvkFixedBaseLadder.FixedStepRel 50 (rho 16186)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX49 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY49 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX50 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY50 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc50, seg15AccX50, seg15AccY50, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung50_wide (rho 16136 : Seg15.F) (rho 16186 : Seg15.F) (seg15AccX49 rho : Seg15.F) (seg15AccY49 rho : Seg15.F) (rho 16632 : Seg15.F) (rho 16633 : Seg15.F) (rho 16634 : Seg15.F) (rho 16635 : Seg15.F) (rho 16636 : Seg15.F) hinput
        (by simpa using seg15_prefix_50_v2 rho r497)
        (by simpa using seg15_prefix_50_addX rho r498)
        (by simpa using seg15_prefix_50_addY rho r499)
        (by simpa using seg15_prefix_50_selX rho r500)
        (by simpa using seg15_prefix_50_selY rho r501)
        hbrow50
  exact hr50

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

