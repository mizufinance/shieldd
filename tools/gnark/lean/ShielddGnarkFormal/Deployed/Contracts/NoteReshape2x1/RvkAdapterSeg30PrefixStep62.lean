import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas6
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step62 (rho : Nat -> Seg30.F)
    (r62 : Seg30.relationRow62 rho)
    (r557 : Seg30.relationRow557 rho)
    (r558 : Seg30.relationRow558 rho)
    (r559 : Seg30.relationRow559 rho)
    (r560 : Seg30.relationRow560 rho)
    (r561 : Seg30.relationRow561 rho)
    (hacc : onCurve (seg30RvkAcc rho 62)) :
    RvkFixedBaseLadder.FixedStepRel 62 (rho 28373)
      (seg30RvkAcc rho 62) (seg30RvkAcc rho (62 + 1)) := by
  have hbrow62 : (1*(rho 28373))*(1 + (-1)*(rho 28373)) = 0 := by
    simpa [Seg30.relationRow62] using r62
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX61 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY61 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr62 : RvkFixedBaseLadder.FixedStepRel 62 (rho 28373)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX61 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY61 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX62 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY62 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc62, seg30AccX62, seg30AccY62, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung62_wide (rho 28311 : Seg30.F) (rho 28373 : Seg30.F) (seg30AccX61 rho : Seg30.F) (seg30AccY61 rho : Seg30.F) (rho 28867 : Seg30.F) (rho 28868 : Seg30.F) (rho 28869 : Seg30.F) (rho 28870 : Seg30.F) (rho 28871 : Seg30.F) hinput
        (by simpa using seg30_prefix_62_v2 rho r557)
        (by simpa using seg30_prefix_62_addX rho r558)
        (by simpa using seg30_prefix_62_addY rho r559)
        (by simpa using seg30_prefix_62_selX rho r560)
        (by simpa using seg30_prefix_62_selY rho r561)
        hbrow62
  exact hr62

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

