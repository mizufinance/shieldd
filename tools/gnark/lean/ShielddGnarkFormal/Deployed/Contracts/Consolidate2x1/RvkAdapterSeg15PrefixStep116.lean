import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas11
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

theorem seg15_prefix_step116 (rho : Nat -> Seg15.F)
    (r116 : Seg15.relationRow116 rho)
    (r827 : Seg15.relationRow827 rho)
    (r828 : Seg15.relationRow828 rho)
    (r829 : Seg15.relationRow829 rho)
    (r830 : Seg15.relationRow830 rho)
    (r831 : Seg15.relationRow831 rho)
    (hacc : onCurve (seg15RvkAcc rho 116)) :
    RvkFixedBaseLadder.FixedStepRel 116 (rho 16252)
      (seg15RvkAcc rho 116) (seg15RvkAcc rho (116 + 1)) := by
  have hbrow116 : (1*(rho 16252))*(1 + (-1)*(rho 16252)) = 0 := by
    simpa [Seg15.relationRow116] using r116
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX115 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY115 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr116 : RvkFixedBaseLadder.FixedStepRel 116 (rho 16252)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX115 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY115 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX116 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY116 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc116, seg15AccX116, seg15AccY116, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung116_wide (rho 16136 : Seg15.F) (rho 16252 : Seg15.F) (seg15AccX115 rho : Seg15.F) (seg15AccY115 rho : Seg15.F) (rho 16962 : Seg15.F) (rho 16963 : Seg15.F) (rho 16964 : Seg15.F) (rho 16965 : Seg15.F) (rho 16966 : Seg15.F) hinput
        (by simpa using seg15_prefix_116_v2 rho r827)
        (by simpa using seg15_prefix_116_addX rho r828)
        (by simpa using seg15_prefix_116_addY rho r829)
        (by simpa using seg15_prefix_116_selX rho r830)
        (by simpa using seg15_prefix_116_selY rho r831)
        hbrow116
  exact hr116

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

