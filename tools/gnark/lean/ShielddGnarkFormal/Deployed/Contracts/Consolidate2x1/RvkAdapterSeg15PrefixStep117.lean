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

theorem seg15_prefix_step117 (rho : Nat -> Seg15.F)
    (r117 : Seg15.relationRow117 rho)
    (r832 : Seg15.relationRow832 rho)
    (r833 : Seg15.relationRow833 rho)
    (r834 : Seg15.relationRow834 rho)
    (r835 : Seg15.relationRow835 rho)
    (r836 : Seg15.relationRow836 rho)
    (hacc : onCurve (seg15RvkAcc rho 117)) :
    RvkFixedBaseLadder.FixedStepRel 117 (rho 16253)
      (seg15RvkAcc rho 117) (seg15RvkAcc rho (117 + 1)) := by
  have hbrow117 : (1*(rho 16253))*(1 + (-1)*(rho 16253)) = 0 := by
    simpa [Seg15.relationRow117] using r117
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX116 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY116 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr117 : RvkFixedBaseLadder.FixedStepRel 117 (rho 16253)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX116 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY116 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX117 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY117 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc117, seg15AccX117, seg15AccY117, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung117_wide (rho 16136 : Seg15.F) (rho 16253 : Seg15.F) (seg15AccX116 rho : Seg15.F) (seg15AccY116 rho : Seg15.F) (rho 16967 : Seg15.F) (rho 16968 : Seg15.F) (rho 16969 : Seg15.F) (rho 16970 : Seg15.F) (rho 16971 : Seg15.F) hinput
        (by simpa using seg15_prefix_117_v2 rho r832)
        (by simpa using seg15_prefix_117_addX rho r833)
        (by simpa using seg15_prefix_117_addY rho r834)
        (by simpa using seg15_prefix_117_selX rho r835)
        (by simpa using seg15_prefix_117_selY rho r836)
        hbrow117
  exact hr117

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

