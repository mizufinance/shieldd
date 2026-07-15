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

theorem seg30_prefix_step141 (rho : Nat -> Seg30.F)
    (r141 : Seg30.relationRow141 rho)
    (r952 : Seg30.relationRow952 rho)
    (r953 : Seg30.relationRow953 rho)
    (r954 : Seg30.relationRow954 rho)
    (r955 : Seg30.relationRow955 rho)
    (r956 : Seg30.relationRow956 rho)
    (hacc : onCurve (seg30RvkAcc rho 141)) :
    RvkFixedBaseLadder.FixedStepRel 141 (rho 28458)
      (seg30RvkAcc rho 141) (seg30RvkAcc rho (141 + 1)) := by
  have hbrow141 : (1*(rho 28458))*(1 + (-1)*(rho 28458)) = 0 := by
    simpa [Seg30.relationRow141] using r141
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX140 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY140 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr141 : RvkFixedBaseLadder.FixedStepRel 141 (rho 28458)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX140 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY140 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX141 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY141 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc141, seg30AccX141, seg30AccY141, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung141_wide (rho 28317 : Seg30.F) (rho 28458 : Seg30.F) (seg30AccX140 rho : Seg30.F) (seg30AccY140 rho : Seg30.F) (rho 29268 : Seg30.F) (rho 29269 : Seg30.F) (rho 29270 : Seg30.F) (rho 29271 : Seg30.F) (rho 29272 : Seg30.F) hinput
        (by simpa using seg30_prefix_141_v2 rho r952)
        (by simpa using seg30_prefix_141_addX rho r953)
        (by simpa using seg30_prefix_141_addY rho r954)
        (by simpa using seg30_prefix_141_selX rho r955)
        (by simpa using seg30_prefix_141_selY rho r956)
        hbrow141
  exact hr141

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

