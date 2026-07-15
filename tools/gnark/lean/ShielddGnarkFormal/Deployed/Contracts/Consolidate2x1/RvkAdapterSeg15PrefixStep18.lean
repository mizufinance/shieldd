import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas1
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

theorem seg15_prefix_step18 (rho : Nat -> Seg15.F)
    (r18 : Seg15.relationRow18 rho)
    (r337 : Seg15.relationRow337 rho)
    (r338 : Seg15.relationRow338 rho)
    (r339 : Seg15.relationRow339 rho)
    (r340 : Seg15.relationRow340 rho)
    (r341 : Seg15.relationRow341 rho)
    (hacc : onCurve (seg15RvkAcc rho 18)) :
    RvkFixedBaseLadder.FixedStepRel 18 (rho 16154)
      (seg15RvkAcc rho 18) (seg15RvkAcc rho (18 + 1)) := by
  have hbrow18 : (1*(rho 16154))*(1 + (-1)*(rho 16154)) = 0 := by
    simpa [Seg15.relationRow18] using r18
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX17 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY17 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr18 : RvkFixedBaseLadder.FixedStepRel 18 (rho 16154)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX17 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY17 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX18 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY18 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc18, seg15AccX18, seg15AccY18, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung18_wide (rho 16136 : Seg15.F) (rho 16154 : Seg15.F) (seg15AccX17 rho : Seg15.F) (seg15AccY17 rho : Seg15.F) (rho 16472 : Seg15.F) (rho 16473 : Seg15.F) (rho 16474 : Seg15.F) (rho 16475 : Seg15.F) (rho 16476 : Seg15.F) hinput
        (by simpa using seg15_prefix_18_v2 rho r337)
        (by simpa using seg15_prefix_18_addX rho r338)
        (by simpa using seg15_prefix_18_addY rho r339)
        (by simpa using seg15_prefix_18_selX rho r340)
        (by simpa using seg15_prefix_18_selY rho r341)
        hbrow18
  exact hr18

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

