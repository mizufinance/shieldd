import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas12
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

theorem seg30_prefix_step130 (rho : Nat -> Seg30.F)
    (r130 : Seg30.relationRow130 rho)
    (r897 : Seg30.relationRow897 rho)
    (r898 : Seg30.relationRow898 rho)
    (r899 : Seg30.relationRow899 rho)
    (r900 : Seg30.relationRow900 rho)
    (r901 : Seg30.relationRow901 rho)
    (hacc : onCurve (seg30RvkAcc rho 130)) :
    RvkFixedBaseLadder.FixedStepRel 130 (rho 28447)
      (seg30RvkAcc rho 130) (seg30RvkAcc rho (130 + 1)) := by
  have hbrow130 : (1*(rho 28447))*(1 + (-1)*(rho 28447)) = 0 := by
    simpa [Seg30.relationRow130] using r130
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX129 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY129 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr130 : RvkFixedBaseLadder.FixedStepRel 130 (rho 28447)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX129 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY129 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX130 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY130 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc130, seg30AccX130, seg30AccY130, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung130_wide (rho 28317 : Seg30.F) (rho 28447 : Seg30.F) (seg30AccX129 rho : Seg30.F) (seg30AccY129 rho : Seg30.F) (rho 29213 : Seg30.F) (rho 29214 : Seg30.F) (rho 29215 : Seg30.F) (rho 29216 : Seg30.F) (rho 29217 : Seg30.F) hinput
        (by simpa using seg30_prefix_130_v2 rho r897)
        (by simpa using seg30_prefix_130_addX rho r898)
        (by simpa using seg30_prefix_130_addY rho r899)
        (by simpa using seg30_prefix_130_selX rho r900)
        (by simpa using seg30_prefix_130_selY rho r901)
        hbrow130
  exact hr130

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

