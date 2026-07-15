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

theorem seg30_prefix_step13 (rho : Nat -> Seg30.F)
    (r13 : Seg30.relationRow13 rho)
    (r312 : Seg30.relationRow312 rho)
    (r313 : Seg30.relationRow313 rho)
    (r314 : Seg30.relationRow314 rho)
    (r315 : Seg30.relationRow315 rho)
    (r316 : Seg30.relationRow316 rho)
    (hacc : onCurve (seg30RvkAcc rho 13)) :
    RvkFixedBaseLadder.FixedStepRel 13 (rho 28330)
      (seg30RvkAcc rho 13) (seg30RvkAcc rho (13 + 1)) := by
  have hbrow13 : (1*(rho 28330))*(1 + (-1)*(rho 28330)) = 0 := by
    simpa [Seg30.relationRow13] using r13
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX12 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY12 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr13 : RvkFixedBaseLadder.FixedStepRel 13 (rho 28330)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX12 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY12 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX13 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY13 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc13, seg30AccX13, seg30AccY13, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung13_wide (rho 28317 : Seg30.F) (rho 28330 : Seg30.F) (seg30AccX12 rho : Seg30.F) (seg30AccY12 rho : Seg30.F) (rho 28628 : Seg30.F) (rho 28629 : Seg30.F) (rho 28630 : Seg30.F) (rho 28631 : Seg30.F) (rho 28632 : Seg30.F) hinput
        (by simpa using seg30_prefix_13_v2 rho r312)
        (by simpa using seg30_prefix_13_addX rho r313)
        (by simpa using seg30_prefix_13_addY rho r314)
        (by simpa using seg30_prefix_13_selX rho r315)
        (by simpa using seg30_prefix_13_selY rho r316)
        hbrow13
  exact hr13

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

