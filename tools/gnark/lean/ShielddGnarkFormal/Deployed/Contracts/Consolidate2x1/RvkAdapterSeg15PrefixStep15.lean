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

theorem seg15_prefix_step15 (rho : Nat -> Seg15.F)
    (r15 : Seg15.relationRow15 rho)
    (r322 : Seg15.relationRow322 rho)
    (r323 : Seg15.relationRow323 rho)
    (r324 : Seg15.relationRow324 rho)
    (r325 : Seg15.relationRow325 rho)
    (r326 : Seg15.relationRow326 rho)
    (hacc : onCurve (seg15RvkAcc rho 15)) :
    RvkFixedBaseLadder.FixedStepRel 15 (rho 16151)
      (seg15RvkAcc rho 15) (seg15RvkAcc rho (15 + 1)) := by
  have hbrow15 : (1*(rho 16151))*(1 + (-1)*(rho 16151)) = 0 := by
    simpa [Seg15.relationRow15] using r15
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX14 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY14 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr15 : RvkFixedBaseLadder.FixedStepRel 15 (rho 16151)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX14 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY14 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX15 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY15 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc15, seg15AccX15, seg15AccY15, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung15_wide (rho 16136 : Seg15.F) (rho 16151 : Seg15.F) (seg15AccX14 rho : Seg15.F) (seg15AccY14 rho : Seg15.F) (rho 16457 : Seg15.F) (rho 16458 : Seg15.F) (rho 16459 : Seg15.F) (rho 16460 : Seg15.F) (rho 16461 : Seg15.F) hinput
        (by simpa using seg15_prefix_15_v2 rho r322)
        (by simpa using seg15_prefix_15_addX rho r323)
        (by simpa using seg15_prefix_15_addY rho r324)
        (by simpa using seg15_prefix_15_selX rho r325)
        (by simpa using seg15_prefix_15_selY rho r326)
        hbrow15
  exact hr15

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

