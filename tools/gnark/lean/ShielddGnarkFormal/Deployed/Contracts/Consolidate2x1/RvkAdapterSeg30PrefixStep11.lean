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

theorem seg30_prefix_step11 (rho : Nat -> Seg30.F)
    (r11 : Seg30.relationRow11 rho)
    (r302 : Seg30.relationRow302 rho)
    (r303 : Seg30.relationRow303 rho)
    (r304 : Seg30.relationRow304 rho)
    (r305 : Seg30.relationRow305 rho)
    (r306 : Seg30.relationRow306 rho)
    (hacc : onCurve (seg30RvkAcc rho 11)) :
    RvkFixedBaseLadder.FixedStepRel 11 (rho 28328)
      (seg30RvkAcc rho 11) (seg30RvkAcc rho (11 + 1)) := by
  have hbrow11 : (1*(rho 28328))*(1 + (-1)*(rho 28328)) = 0 := by
    simpa [Seg30.relationRow11] using r11
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX10 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY10 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr11 : RvkFixedBaseLadder.FixedStepRel 11 (rho 28328)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX10 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY10 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX11 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY11 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc11, seg30AccX11, seg30AccY11, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung11_wide (rho 28317 : Seg30.F) (rho 28328 : Seg30.F) (seg30AccX10 rho : Seg30.F) (seg30AccY10 rho : Seg30.F) (rho 28618 : Seg30.F) (rho 28619 : Seg30.F) (rho 28620 : Seg30.F) (rho 28621 : Seg30.F) (rho 28622 : Seg30.F) hinput
        (by simpa using seg30_prefix_11_v2 rho r302)
        (by simpa using seg30_prefix_11_addX rho r303)
        (by simpa using seg30_prefix_11_addY rho r304)
        (by simpa using seg30_prefix_11_selX rho r305)
        (by simpa using seg30_prefix_11_selY rho r306)
        hbrow11
  exact hr11

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

