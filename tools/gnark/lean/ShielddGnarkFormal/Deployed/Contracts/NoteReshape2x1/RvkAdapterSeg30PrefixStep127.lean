import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas12
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

theorem seg30_prefix_step127 (rho : Nat -> Seg30.F)
    (r127 : Seg30.relationRow127 rho)
    (r882 : Seg30.relationRow882 rho)
    (r883 : Seg30.relationRow883 rho)
    (r884 : Seg30.relationRow884 rho)
    (r885 : Seg30.relationRow885 rho)
    (r886 : Seg30.relationRow886 rho)
    (hacc : onCurve (seg30RvkAcc rho 127)) :
    RvkFixedBaseLadder.FixedStepRel 127 (rho 28438)
      (seg30RvkAcc rho 127) (seg30RvkAcc rho (127 + 1)) := by
  have hbrow127 : (1*(rho 28438))*(1 + (-1)*(rho 28438)) = 0 := by
    simpa [Seg30.relationRow127] using r127
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX126 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY126 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr127 : RvkFixedBaseLadder.FixedStepRel 127 (rho 28438)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX126 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY126 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX127 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY127 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc127, seg30AccX127, seg30AccY127, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung127_wide (rho 28311 : Seg30.F) (rho 28438 : Seg30.F) (seg30AccX126 rho : Seg30.F) (seg30AccY126 rho : Seg30.F) (rho 29192 : Seg30.F) (rho 29193 : Seg30.F) (rho 29194 : Seg30.F) (rho 29195 : Seg30.F) (rho 29196 : Seg30.F) hinput
        (by simpa using seg30_prefix_127_v2 rho r882)
        (by simpa using seg30_prefix_127_addX rho r883)
        (by simpa using seg30_prefix_127_addY rho r884)
        (by simpa using seg30_prefix_127_selX rho r885)
        (by simpa using seg30_prefix_127_selY rho r886)
        hbrow127
  exact hr127

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

