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

theorem seg30_prefix_step12 (rho : Nat -> Seg30.F)
    (r12 : Seg30.relationRow12 rho)
    (r307 : Seg30.relationRow307 rho)
    (r308 : Seg30.relationRow308 rho)
    (r309 : Seg30.relationRow309 rho)
    (r310 : Seg30.relationRow310 rho)
    (r311 : Seg30.relationRow311 rho)
    (hacc : onCurve (seg30RvkAcc rho 12)) :
    RvkFixedBaseLadder.FixedStepRel 12 (rho 28329)
      (seg30RvkAcc rho 12) (seg30RvkAcc rho (12 + 1)) := by
  have hbrow12 : (1*(rho 28329))*(1 + (-1)*(rho 28329)) = 0 := by
    simpa [Seg30.relationRow12] using r12
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX11 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY11 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr12 : RvkFixedBaseLadder.FixedStepRel 12 (rho 28329)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX11 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY11 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX12 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY12 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc12, seg30AccX12, seg30AccY12, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung12_wide (rho 28317 : Seg30.F) (rho 28329 : Seg30.F) (seg30AccX11 rho : Seg30.F) (seg30AccY11 rho : Seg30.F) (rho 28623 : Seg30.F) (rho 28624 : Seg30.F) (rho 28625 : Seg30.F) (rho 28626 : Seg30.F) (rho 28627 : Seg30.F) hinput
        (by simpa using seg30_prefix_12_v2 rho r307)
        (by simpa using seg30_prefix_12_addX rho r308)
        (by simpa using seg30_prefix_12_addY rho r309)
        (by simpa using seg30_prefix_12_selX rho r310)
        (by simpa using seg30_prefix_12_selY rho r311)
        hbrow12
  exact hr12

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

