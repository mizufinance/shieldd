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

theorem seg15_prefix_step34 (rho : Nat -> Seg15.F)
    (r34 : Seg15.relationRow34 rho)
    (r417 : Seg15.relationRow417 rho)
    (r418 : Seg15.relationRow418 rho)
    (r419 : Seg15.relationRow419 rho)
    (r420 : Seg15.relationRow420 rho)
    (r421 : Seg15.relationRow421 rho)
    (hacc : onCurve (seg15RvkAcc rho 34)) :
    RvkFixedBaseLadder.FixedStepRel 34 (rho 16170)
      (seg15RvkAcc rho 34) (seg15RvkAcc rho (34 + 1)) := by
  have hbrow34 : (1*(rho 16170))*(1 + (-1)*(rho 16170)) = 0 := by
    simpa [Seg15.relationRow34] using r34
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX33 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY33 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr34 : RvkFixedBaseLadder.FixedStepRel 34 (rho 16170)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX33 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY33 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX34 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY34 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc34, seg15AccX34, seg15AccY34, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung34_wide (rho 16136 : Seg15.F) (rho 16170 : Seg15.F) (seg15AccX33 rho : Seg15.F) (seg15AccY33 rho : Seg15.F) (rho 16552 : Seg15.F) (rho 16553 : Seg15.F) (rho 16554 : Seg15.F) (rho 16555 : Seg15.F) (rho 16556 : Seg15.F) hinput
        (by simpa using seg15_prefix_34_v2 rho r417)
        (by simpa using seg15_prefix_34_addX rho r418)
        (by simpa using seg15_prefix_34_addY rho r419)
        (by simpa using seg15_prefix_34_selX rho r420)
        (by simpa using seg15_prefix_34_selY rho r421)
        hbrow34
  exact hr34

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

