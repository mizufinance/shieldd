import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas2
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

theorem seg15_prefix_step28 (rho : Nat -> Seg15.F)
    (r28 : Seg15.relationRow28 rho)
    (r387 : Seg15.relationRow387 rho)
    (r388 : Seg15.relationRow388 rho)
    (r389 : Seg15.relationRow389 rho)
    (r390 : Seg15.relationRow390 rho)
    (r391 : Seg15.relationRow391 rho)
    (hacc : onCurve (seg15RvkAcc rho 28)) :
    RvkFixedBaseLadder.FixedStepRel 28 (rho 16164)
      (seg15RvkAcc rho 28) (seg15RvkAcc rho (28 + 1)) := by
  have hbrow28 : (1*(rho 16164))*(1 + (-1)*(rho 16164)) = 0 := by
    simpa [Seg15.relationRow28] using r28
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX27 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY27 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr28 : RvkFixedBaseLadder.FixedStepRel 28 (rho 16164)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX27 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY27 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX28 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY28 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc28, seg15AccX28, seg15AccY28, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung28_wide (rho 16136 : Seg15.F) (rho 16164 : Seg15.F) (seg15AccX27 rho : Seg15.F) (seg15AccY27 rho : Seg15.F) (rho 16522 : Seg15.F) (rho 16523 : Seg15.F) (rho 16524 : Seg15.F) (rho 16525 : Seg15.F) (rho 16526 : Seg15.F) hinput
        (by simpa using seg15_prefix_28_v2 rho r387)
        (by simpa using seg15_prefix_28_addX rho r388)
        (by simpa using seg15_prefix_28_addY rho r389)
        (by simpa using seg15_prefix_28_selX rho r390)
        (by simpa using seg15_prefix_28_selY rho r391)
        hbrow28
  exact hr28

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

