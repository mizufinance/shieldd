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

theorem seg15_prefix_step12 (rho : Nat -> Seg15.F)
    (r12 : Seg15.relationRow12 rho)
    (r307 : Seg15.relationRow307 rho)
    (r308 : Seg15.relationRow308 rho)
    (r309 : Seg15.relationRow309 rho)
    (r310 : Seg15.relationRow310 rho)
    (r311 : Seg15.relationRow311 rho)
    (hacc : onCurve (seg15RvkAcc rho 12)) :
    RvkFixedBaseLadder.FixedStepRel 12 (rho 16148)
      (seg15RvkAcc rho 12) (seg15RvkAcc rho (12 + 1)) := by
  have hbrow12 : (1*(rho 16148))*(1 + (-1)*(rho 16148)) = 0 := by
    simpa [Seg15.relationRow12] using r12
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX11 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY11 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr12 : RvkFixedBaseLadder.FixedStepRel 12 (rho 16148)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX11 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY11 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX12 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY12 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc12, seg15AccX12, seg15AccY12, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung12_wide (rho 16136 : Seg15.F) (rho 16148 : Seg15.F) (seg15AccX11 rho : Seg15.F) (seg15AccY11 rho : Seg15.F) (rho 16442 : Seg15.F) (rho 16443 : Seg15.F) (rho 16444 : Seg15.F) (rho 16445 : Seg15.F) (rho 16446 : Seg15.F) hinput
        (by simpa using seg15_prefix_12_v2 rho r307)
        (by simpa using seg15_prefix_12_addX rho r308)
        (by simpa using seg15_prefix_12_addY rho r309)
        (by simpa using seg15_prefix_12_selX rho r310)
        (by simpa using seg15_prefix_12_selY rho r311)
        hbrow12
  exact hr12

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

