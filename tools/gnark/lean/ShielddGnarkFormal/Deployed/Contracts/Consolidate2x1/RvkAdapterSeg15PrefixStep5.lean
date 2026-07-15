import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas0
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

theorem seg15_prefix_step5 (rho : Nat -> Seg15.F)
    (r5 : Seg15.relationRow5 rho)
    (r272 : Seg15.relationRow272 rho)
    (r273 : Seg15.relationRow273 rho)
    (r274 : Seg15.relationRow274 rho)
    (r275 : Seg15.relationRow275 rho)
    (r276 : Seg15.relationRow276 rho)
    (hacc : onCurve (seg15RvkAcc rho 5)) :
    RvkFixedBaseLadder.FixedStepRel 5 (rho 16141)
      (seg15RvkAcc rho 5) (seg15RvkAcc rho (5 + 1)) := by
  have hbrow5 : (1*(rho 16141))*(1 + (-1)*(rho 16141)) = 0 := by
    simpa [Seg15.relationRow5] using r5
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX4 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY4 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr5 : RvkFixedBaseLadder.FixedStepRel 5 (rho 16141)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX4 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY4 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX5 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY5 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc5, seg15AccX5, seg15AccY5, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung5_wide (rho 16136 : Seg15.F) (rho 16141 : Seg15.F) (seg15AccX4 rho : Seg15.F) (seg15AccY4 rho : Seg15.F) (rho 16407 : Seg15.F) (rho 16408 : Seg15.F) (rho 16409 : Seg15.F) (rho 16410 : Seg15.F) (rho 16411 : Seg15.F) hinput
        (by simpa using seg15_prefix_5_v2 rho r272)
        (by simpa using seg15_prefix_5_addX rho r273)
        (by simpa using seg15_prefix_5_addY rho r274)
        (by simpa using seg15_prefix_5_selX rho r275)
        (by simpa using seg15_prefix_5_selY rho r276)
        hbrow5
  exact hr5

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

