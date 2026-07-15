import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas1
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step19 (rho : Nat -> Seg30.F)
    (r19 : Seg30.relationRow19 rho)
    (r342 : Seg30.relationRow342 rho)
    (r343 : Seg30.relationRow343 rho)
    (r344 : Seg30.relationRow344 rho)
    (r345 : Seg30.relationRow345 rho)
    (r346 : Seg30.relationRow346 rho)
    (hacc : onCurve (seg30RvkAcc rho 19)) :
    RvkFixedBaseLadder.FixedStepRel 19 (rho 28336)
      (seg30RvkAcc rho 19) (seg30RvkAcc rho (19 + 1)) := by
  have hbrow19 : (1*(rho 28336))*(1 + (-1)*(rho 28336)) = 0 := by
    simpa [Seg30.relationRow19] using r19
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX18 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY18 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr19 : RvkFixedBaseLadder.FixedStepRel 19 (rho 28336)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX18 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY18 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX19 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY19 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc19, seg30AccX19, seg30AccY19, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung19_wide (rho 28317 : Seg30.F) (rho 28336 : Seg30.F) (seg30AccX18 rho : Seg30.F) (seg30AccY18 rho : Seg30.F) (rho 28658 : Seg30.F) (rho 28659 : Seg30.F) (rho 28660 : Seg30.F) (rho 28661 : Seg30.F) (rho 28662 : Seg30.F) hinput
        (by simpa using seg30_prefix_19_v2 rho r342)
        (by simpa using seg30_prefix_19_addX rho r343)
        (by simpa using seg30_prefix_19_addY rho r344)
        (by simpa using seg30_prefix_19_selX rho r345)
        (by simpa using seg30_prefix_19_selY rho r346)
        hbrow19
  exact hr19

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

