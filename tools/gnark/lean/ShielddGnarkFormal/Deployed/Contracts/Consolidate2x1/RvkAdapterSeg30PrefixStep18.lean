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

theorem seg30_prefix_step18 (rho : Nat -> Seg30.F)
    (r18 : Seg30.relationRow18 rho)
    (r337 : Seg30.relationRow337 rho)
    (r338 : Seg30.relationRow338 rho)
    (r339 : Seg30.relationRow339 rho)
    (r340 : Seg30.relationRow340 rho)
    (r341 : Seg30.relationRow341 rho)
    (hacc : onCurve (seg30RvkAcc rho 18)) :
    RvkFixedBaseLadder.FixedStepRel 18 (rho 28335)
      (seg30RvkAcc rho 18) (seg30RvkAcc rho (18 + 1)) := by
  have hbrow18 : (1*(rho 28335))*(1 + (-1)*(rho 28335)) = 0 := by
    simpa [Seg30.relationRow18] using r18
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX17 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY17 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr18 : RvkFixedBaseLadder.FixedStepRel 18 (rho 28335)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX17 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY17 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX18 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY18 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc18, seg30AccX18, seg30AccY18, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung18_wide (rho 28317 : Seg30.F) (rho 28335 : Seg30.F) (seg30AccX17 rho : Seg30.F) (seg30AccY17 rho : Seg30.F) (rho 28653 : Seg30.F) (rho 28654 : Seg30.F) (rho 28655 : Seg30.F) (rho 28656 : Seg30.F) (rho 28657 : Seg30.F) hinput
        (by simpa using seg30_prefix_18_v2 rho r337)
        (by simpa using seg30_prefix_18_addX rho r338)
        (by simpa using seg30_prefix_18_addY rho r339)
        (by simpa using seg30_prefix_18_selX rho r340)
        (by simpa using seg30_prefix_18_selY rho r341)
        hbrow18
  exact hr18

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

