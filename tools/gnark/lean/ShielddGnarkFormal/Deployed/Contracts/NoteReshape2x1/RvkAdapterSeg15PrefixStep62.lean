import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas6
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_step62 (rho : Nat -> Seg15.F)
    (r62 : Seg15.relationRow62 rho)
    (r557 : Seg15.relationRow557 rho)
    (r558 : Seg15.relationRow558 rho)
    (r559 : Seg15.relationRow559 rho)
    (r560 : Seg15.relationRow560 rho)
    (r561 : Seg15.relationRow561 rho)
    (hacc : onCurve (seg15RvkAcc rho 62)) :
    RvkFixedBaseLadder.FixedStepRel 62 (rho 16198)
      (seg15RvkAcc rho 62) (seg15RvkAcc rho (62 + 1)) := by
  have hbrow62 : (1*(rho 16198))*(1 + (-1)*(rho 16198)) = 0 := by
    simpa [Seg15.relationRow62] using r62
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX61 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY61 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr62 : RvkFixedBaseLadder.FixedStepRel 62 (rho 16198)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX61 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY61 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX62 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY62 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc62, seg15AccX62, seg15AccY62, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung62_wide (rho 16136 : Seg15.F) (rho 16198 : Seg15.F) (seg15AccX61 rho : Seg15.F) (seg15AccY61 rho : Seg15.F) (rho 16692 : Seg15.F) (rho 16693 : Seg15.F) (rho 16694 : Seg15.F) (rho 16695 : Seg15.F) (rho 16696 : Seg15.F) hinput
        (by simpa using seg15_prefix_62_v2 rho r557)
        (by simpa using seg15_prefix_62_addX rho r558)
        (by simpa using seg15_prefix_62_addY rho r559)
        (by simpa using seg15_prefix_62_selX rho r560)
        (by simpa using seg15_prefix_62_selY rho r561)
        hbrow62
  exact hr62

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

