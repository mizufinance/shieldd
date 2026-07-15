import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas2
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

theorem seg30_prefix_step28 (rho : Nat -> Seg30.F)
    (r28 : Seg30.relationRow28 rho)
    (r387 : Seg30.relationRow387 rho)
    (r388 : Seg30.relationRow388 rho)
    (r389 : Seg30.relationRow389 rho)
    (r390 : Seg30.relationRow390 rho)
    (r391 : Seg30.relationRow391 rho)
    (hacc : onCurve (seg30RvkAcc rho 28)) :
    RvkFixedBaseLadder.FixedStepRel 28 (rho 28345)
      (seg30RvkAcc rho 28) (seg30RvkAcc rho (28 + 1)) := by
  have hbrow28 : (1*(rho 28345))*(1 + (-1)*(rho 28345)) = 0 := by
    simpa [Seg30.relationRow28] using r28
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX27 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY27 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr28 : RvkFixedBaseLadder.FixedStepRel 28 (rho 28345)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX27 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY27 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX28 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY28 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc28, seg30AccX28, seg30AccY28, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung28_wide (rho 28317 : Seg30.F) (rho 28345 : Seg30.F) (seg30AccX27 rho : Seg30.F) (seg30AccY27 rho : Seg30.F) (rho 28703 : Seg30.F) (rho 28704 : Seg30.F) (rho 28705 : Seg30.F) (rho 28706 : Seg30.F) (rho 28707 : Seg30.F) hinput
        (by simpa using seg30_prefix_28_v2 rho r387)
        (by simpa using seg30_prefix_28_addX rho r388)
        (by simpa using seg30_prefix_28_addY rho r389)
        (by simpa using seg30_prefix_28_selX rho r390)
        (by simpa using seg30_prefix_28_selY rho r391)
        hbrow28
  exact hr28

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

