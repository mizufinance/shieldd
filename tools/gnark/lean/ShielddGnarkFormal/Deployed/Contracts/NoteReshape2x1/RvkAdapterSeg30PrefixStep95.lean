import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas9
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

theorem seg30_prefix_step95 (rho : Nat -> Seg30.F)
    (r95 : Seg30.relationRow95 rho)
    (r722 : Seg30.relationRow722 rho)
    (r723 : Seg30.relationRow723 rho)
    (r724 : Seg30.relationRow724 rho)
    (r725 : Seg30.relationRow725 rho)
    (r726 : Seg30.relationRow726 rho)
    (hacc : onCurve (seg30RvkAcc rho 95)) :
    RvkFixedBaseLadder.FixedStepRel 95 (rho 28406)
      (seg30RvkAcc rho 95) (seg30RvkAcc rho (95 + 1)) := by
  have hbrow95 : (1*(rho 28406))*(1 + (-1)*(rho 28406)) = 0 := by
    simpa [Seg30.relationRow95] using r95
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX94 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY94 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr95 : RvkFixedBaseLadder.FixedStepRel 95 (rho 28406)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX94 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY94 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX95 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY95 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc95, seg30AccX95, seg30AccY95, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung95_wide (rho 28311 : Seg30.F) (rho 28406 : Seg30.F) (seg30AccX94 rho : Seg30.F) (seg30AccY94 rho : Seg30.F) (rho 29032 : Seg30.F) (rho 29033 : Seg30.F) (rho 29034 : Seg30.F) (rho 29035 : Seg30.F) (rho 29036 : Seg30.F) hinput
        (by simpa using seg30_prefix_95_v2 rho r722)
        (by simpa using seg30_prefix_95_addX rho r723)
        (by simpa using seg30_prefix_95_addY rho r724)
        (by simpa using seg30_prefix_95_selX rho r725)
        (by simpa using seg30_prefix_95_selY rho r726)
        hbrow95
  exact hr95

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

