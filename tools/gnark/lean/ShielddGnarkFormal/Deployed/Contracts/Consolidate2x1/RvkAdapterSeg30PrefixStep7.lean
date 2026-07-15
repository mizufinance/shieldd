import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas0
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

theorem seg30_prefix_step7 (rho : Nat -> Seg30.F)
    (r7 : Seg30.relationRow7 rho)
    (r282 : Seg30.relationRow282 rho)
    (r283 : Seg30.relationRow283 rho)
    (r284 : Seg30.relationRow284 rho)
    (r285 : Seg30.relationRow285 rho)
    (r286 : Seg30.relationRow286 rho)
    (hacc : onCurve (seg30RvkAcc rho 7)) :
    RvkFixedBaseLadder.FixedStepRel 7 (rho 28324)
      (seg30RvkAcc rho 7) (seg30RvkAcc rho (7 + 1)) := by
  have hbrow7 : (1*(rho 28324))*(1 + (-1)*(rho 28324)) = 0 := by
    simpa [Seg30.relationRow7] using r7
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX6 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY6 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr7 : RvkFixedBaseLadder.FixedStepRel 7 (rho 28324)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX6 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY6 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX7 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY7 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc7, seg30AccX7, seg30AccY7, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung7_wide (rho 28317 : Seg30.F) (rho 28324 : Seg30.F) (seg30AccX6 rho : Seg30.F) (seg30AccY6 rho : Seg30.F) (rho 28598 : Seg30.F) (rho 28599 : Seg30.F) (rho 28600 : Seg30.F) (rho 28601 : Seg30.F) (rho 28602 : Seg30.F) hinput
        (by simpa using seg30_prefix_7_v2 rho r282)
        (by simpa using seg30_prefix_7_addX rho r283)
        (by simpa using seg30_prefix_7_addY rho r284)
        (by simpa using seg30_prefix_7_selX rho r285)
        (by simpa using seg30_prefix_7_selY rho r286)
        hbrow7
  exact hr7

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

