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

theorem seg30_prefix_step5 (rho : Nat -> Seg30.F)
    (r5 : Seg30.relationRow5 rho)
    (r272 : Seg30.relationRow272 rho)
    (r273 : Seg30.relationRow273 rho)
    (r274 : Seg30.relationRow274 rho)
    (r275 : Seg30.relationRow275 rho)
    (r276 : Seg30.relationRow276 rho)
    (hacc : onCurve (seg30RvkAcc rho 5)) :
    RvkFixedBaseLadder.FixedStepRel 5 (rho 28322)
      (seg30RvkAcc rho 5) (seg30RvkAcc rho (5 + 1)) := by
  have hbrow5 : (1*(rho 28322))*(1 + (-1)*(rho 28322)) = 0 := by
    simpa [Seg30.relationRow5] using r5
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX4 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY4 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr5 : RvkFixedBaseLadder.FixedStepRel 5 (rho 28322)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX4 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY4 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX5 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY5 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc5, seg30AccX5, seg30AccY5, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung5_wide (rho 28317 : Seg30.F) (rho 28322 : Seg30.F) (seg30AccX4 rho : Seg30.F) (seg30AccY4 rho : Seg30.F) (rho 28588 : Seg30.F) (rho 28589 : Seg30.F) (rho 28590 : Seg30.F) (rho 28591 : Seg30.F) (rho 28592 : Seg30.F) hinput
        (by simpa using seg30_prefix_5_v2 rho r272)
        (by simpa using seg30_prefix_5_addX rho r273)
        (by simpa using seg30_prefix_5_addY rho r274)
        (by simpa using seg30_prefix_5_selX rho r275)
        (by simpa using seg30_prefix_5_selY rho r276)
        hbrow5
  exact hr5

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

