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

theorem seg15_prefix_step33 (rho : Nat -> Seg15.F)
    (r33 : Seg15.relationRow33 rho)
    (r412 : Seg15.relationRow412 rho)
    (r413 : Seg15.relationRow413 rho)
    (r414 : Seg15.relationRow414 rho)
    (r415 : Seg15.relationRow415 rho)
    (r416 : Seg15.relationRow416 rho)
    (hacc : onCurve (seg15RvkAcc rho 33)) :
    RvkFixedBaseLadder.FixedStepRel 33 (rho 16169)
      (seg15RvkAcc rho 33) (seg15RvkAcc rho (33 + 1)) := by
  have hbrow33 : (1*(rho 16169))*(1 + (-1)*(rho 16169)) = 0 := by
    simpa [Seg15.relationRow33] using r33
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX32 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY32 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr33 : RvkFixedBaseLadder.FixedStepRel 33 (rho 16169)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX32 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY32 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX33 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY33 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc33, seg15AccX33, seg15AccY33, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung33_wide (rho 16136 : Seg15.F) (rho 16169 : Seg15.F) (seg15AccX32 rho : Seg15.F) (seg15AccY32 rho : Seg15.F) (rho 16547 : Seg15.F) (rho 16548 : Seg15.F) (rho 16549 : Seg15.F) (rho 16550 : Seg15.F) (rho 16551 : Seg15.F) hinput
        (by simpa using seg15_prefix_33_v2 rho r412)
        (by simpa using seg15_prefix_33_addX rho r413)
        (by simpa using seg15_prefix_33_addY rho r414)
        (by simpa using seg15_prefix_33_selX rho r415)
        (by simpa using seg15_prefix_33_selY rho r416)
        hbrow33
  exact hr33

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

