import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas14
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

theorem seg30_prefix_step144 (rho : Nat -> Seg30.F)
    (r144 : Seg30.relationRow144 rho)
    (r967 : Seg30.relationRow967 rho)
    (r968 : Seg30.relationRow968 rho)
    (r969 : Seg30.relationRow969 rho)
    (r970 : Seg30.relationRow970 rho)
    (r971 : Seg30.relationRow971 rho)
    (hacc : onCurve (seg30RvkAcc rho 144)) :
    RvkFixedBaseLadder.FixedStepRel 144 (rho 28461)
      (seg30RvkAcc rho 144) (seg30RvkAcc rho (144 + 1)) := by
  have hbrow144 : (1*(rho 28461))*(1 + (-1)*(rho 28461)) = 0 := by
    simpa [Seg30.relationRow144] using r144
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX143 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY143 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr144 : RvkFixedBaseLadder.FixedStepRel 144 (rho 28461)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX143 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY143 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX144 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY144 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc144, seg30AccX144, seg30AccY144, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung144_wide (rho 28317 : Seg30.F) (rho 28461 : Seg30.F) (seg30AccX143 rho : Seg30.F) (seg30AccY143 rho : Seg30.F) (rho 29283 : Seg30.F) (rho 29284 : Seg30.F) (rho 29285 : Seg30.F) (rho 29286 : Seg30.F) (rho 29287 : Seg30.F) hinput
        (by simpa using seg30_prefix_144_v2 rho r967)
        (by simpa using seg30_prefix_144_addX rho r968)
        (by simpa using seg30_prefix_144_addY rho r969)
        (by simpa using seg30_prefix_144_selX rho r970)
        (by simpa using seg30_prefix_144_selY rho r971)
        hbrow144
  exact hr144

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

