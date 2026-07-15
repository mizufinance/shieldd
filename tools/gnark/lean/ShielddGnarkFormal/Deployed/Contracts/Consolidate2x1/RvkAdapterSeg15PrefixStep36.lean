import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas3
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

theorem seg15_prefix_step36 (rho : Nat -> Seg15.F)
    (r36 : Seg15.relationRow36 rho)
    (r427 : Seg15.relationRow427 rho)
    (r428 : Seg15.relationRow428 rho)
    (r429 : Seg15.relationRow429 rho)
    (r430 : Seg15.relationRow430 rho)
    (r431 : Seg15.relationRow431 rho)
    (hacc : onCurve (seg15RvkAcc rho 36)) :
    RvkFixedBaseLadder.FixedStepRel 36 (rho 16172)
      (seg15RvkAcc rho 36) (seg15RvkAcc rho (36 + 1)) := by
  have hbrow36 : (1*(rho 16172))*(1 + (-1)*(rho 16172)) = 0 := by
    simpa [Seg15.relationRow36] using r36
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX35 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY35 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr36 : RvkFixedBaseLadder.FixedStepRel 36 (rho 16172)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX35 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY35 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX36 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY36 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc36, seg15AccX36, seg15AccY36, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung36_wide (rho 16136 : Seg15.F) (rho 16172 : Seg15.F) (seg15AccX35 rho : Seg15.F) (seg15AccY35 rho : Seg15.F) (rho 16562 : Seg15.F) (rho 16563 : Seg15.F) (rho 16564 : Seg15.F) (rho 16565 : Seg15.F) (rho 16566 : Seg15.F) hinput
        (by simpa using seg15_prefix_36_v2 rho r427)
        (by simpa using seg15_prefix_36_addX rho r428)
        (by simpa using seg15_prefix_36_addY rho r429)
        (by simpa using seg15_prefix_36_selX rho r430)
        (by simpa using seg15_prefix_36_selY rho r431)
        hbrow36
  exact hr36

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

