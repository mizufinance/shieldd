import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas11
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

theorem seg30_prefix_step117 (rho : Nat -> Seg30.F)
    (r117 : Seg30.relationRow117 rho)
    (r832 : Seg30.relationRow832 rho)
    (r833 : Seg30.relationRow833 rho)
    (r834 : Seg30.relationRow834 rho)
    (r835 : Seg30.relationRow835 rho)
    (r836 : Seg30.relationRow836 rho)
    (hacc : onCurve (seg30RvkAcc rho 117)) :
    RvkFixedBaseLadder.FixedStepRel 117 (rho 28434)
      (seg30RvkAcc rho 117) (seg30RvkAcc rho (117 + 1)) := by
  have hbrow117 : (1*(rho 28434))*(1 + (-1)*(rho 28434)) = 0 := by
    simpa [Seg30.relationRow117] using r117
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX116 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY116 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr117 : RvkFixedBaseLadder.FixedStepRel 117 (rho 28434)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX116 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY116 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX117 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY117 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc117, seg30AccX117, seg30AccY117, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung117_wide (rho 28317 : Seg30.F) (rho 28434 : Seg30.F) (seg30AccX116 rho : Seg30.F) (seg30AccY116 rho : Seg30.F) (rho 29148 : Seg30.F) (rho 29149 : Seg30.F) (rho 29150 : Seg30.F) (rho 29151 : Seg30.F) (rho 29152 : Seg30.F) hinput
        (by simpa using seg30_prefix_117_v2 rho r832)
        (by simpa using seg30_prefix_117_addX rho r833)
        (by simpa using seg30_prefix_117_addY rho r834)
        (by simpa using seg30_prefix_117_selX rho r835)
        (by simpa using seg30_prefix_117_selY rho r836)
        hbrow117
  exact hr117

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

