import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas3
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

theorem seg30_prefix_step40 (rho : Nat -> Seg30.F)
    (r40 : Seg30.relationRow40 rho)
    (r447 : Seg30.relationRow447 rho)
    (r448 : Seg30.relationRow448 rho)
    (r449 : Seg30.relationRow449 rho)
    (r450 : Seg30.relationRow450 rho)
    (r451 : Seg30.relationRow451 rho)
    (hacc : onCurve (seg30RvkAcc rho 40)) :
    RvkFixedBaseLadder.FixedStepRel 40 (rho 28357)
      (seg30RvkAcc rho 40) (seg30RvkAcc rho (40 + 1)) := by
  have hbrow40 : (1*(rho 28357))*(1 + (-1)*(rho 28357)) = 0 := by
    simpa [Seg30.relationRow40] using r40
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX39 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY39 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr40 : RvkFixedBaseLadder.FixedStepRel 40 (rho 28357)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX39 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY39 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX40 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY40 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc40, seg30AccX40, seg30AccY40, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung40_wide (rho 28317 : Seg30.F) (rho 28357 : Seg30.F) (seg30AccX39 rho : Seg30.F) (seg30AccY39 rho : Seg30.F) (rho 28763 : Seg30.F) (rho 28764 : Seg30.F) (rho 28765 : Seg30.F) (rho 28766 : Seg30.F) (rho 28767 : Seg30.F) hinput
        (by simpa using seg30_prefix_40_v2 rho r447)
        (by simpa using seg30_prefix_40_addX rho r448)
        (by simpa using seg30_prefix_40_addY rho r449)
        (by simpa using seg30_prefix_40_selX rho r450)
        (by simpa using seg30_prefix_40_selY rho r451)
        hbrow40
  exact hr40

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

