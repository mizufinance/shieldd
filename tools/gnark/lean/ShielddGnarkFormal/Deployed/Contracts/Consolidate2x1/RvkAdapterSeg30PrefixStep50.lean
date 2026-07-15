import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas4
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

theorem seg30_prefix_step50 (rho : Nat -> Seg30.F)
    (r50 : Seg30.relationRow50 rho)
    (r497 : Seg30.relationRow497 rho)
    (r498 : Seg30.relationRow498 rho)
    (r499 : Seg30.relationRow499 rho)
    (r500 : Seg30.relationRow500 rho)
    (r501 : Seg30.relationRow501 rho)
    (hacc : onCurve (seg30RvkAcc rho 50)) :
    RvkFixedBaseLadder.FixedStepRel 50 (rho 28367)
      (seg30RvkAcc rho 50) (seg30RvkAcc rho (50 + 1)) := by
  have hbrow50 : (1*(rho 28367))*(1 + (-1)*(rho 28367)) = 0 := by
    simpa [Seg30.relationRow50] using r50
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX49 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY49 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr50 : RvkFixedBaseLadder.FixedStepRel 50 (rho 28367)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX49 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY49 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX50 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY50 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc50, seg30AccX50, seg30AccY50, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung50_wide (rho 28317 : Seg30.F) (rho 28367 : Seg30.F) (seg30AccX49 rho : Seg30.F) (seg30AccY49 rho : Seg30.F) (rho 28813 : Seg30.F) (rho 28814 : Seg30.F) (rho 28815 : Seg30.F) (rho 28816 : Seg30.F) (rho 28817 : Seg30.F) hinput
        (by simpa using seg30_prefix_50_v2 rho r497)
        (by simpa using seg30_prefix_50_addX rho r498)
        (by simpa using seg30_prefix_50_addY rho r499)
        (by simpa using seg30_prefix_50_selX rho r500)
        (by simpa using seg30_prefix_50_selY rho r501)
        hbrow50
  exact hr50

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

