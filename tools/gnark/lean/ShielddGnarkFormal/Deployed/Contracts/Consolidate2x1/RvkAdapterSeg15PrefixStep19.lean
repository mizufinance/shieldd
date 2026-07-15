import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas1
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

theorem seg15_prefix_step19 (rho : Nat -> Seg15.F)
    (r19 : Seg15.relationRow19 rho)
    (r342 : Seg15.relationRow342 rho)
    (r343 : Seg15.relationRow343 rho)
    (r344 : Seg15.relationRow344 rho)
    (r345 : Seg15.relationRow345 rho)
    (r346 : Seg15.relationRow346 rho)
    (hacc : onCurve (seg15RvkAcc rho 19)) :
    RvkFixedBaseLadder.FixedStepRel 19 (rho 16155)
      (seg15RvkAcc rho 19) (seg15RvkAcc rho (19 + 1)) := by
  have hbrow19 : (1*(rho 16155))*(1 + (-1)*(rho 16155)) = 0 := by
    simpa [Seg15.relationRow19] using r19
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX18 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY18 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr19 : RvkFixedBaseLadder.FixedStepRel 19 (rho 16155)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX18 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY18 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX19 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY19 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc19, seg15AccX19, seg15AccY19, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung19_wide (rho 16136 : Seg15.F) (rho 16155 : Seg15.F) (seg15AccX18 rho : Seg15.F) (seg15AccY18 rho : Seg15.F) (rho 16477 : Seg15.F) (rho 16478 : Seg15.F) (rho 16479 : Seg15.F) (rho 16480 : Seg15.F) (rho 16481 : Seg15.F) hinput
        (by simpa using seg15_prefix_19_v2 rho r342)
        (by simpa using seg15_prefix_19_addX rho r343)
        (by simpa using seg15_prefix_19_addY rho r344)
        (by simpa using seg15_prefix_19_selX rho r345)
        (by simpa using seg15_prefix_19_selY rho r346)
        hbrow19
  exact hr19

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

