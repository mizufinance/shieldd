import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas11
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

theorem seg30_prefix_step119 (rho : Nat -> Seg30.F)
    (r119 : Seg30.relationRow119 rho)
    (r842 : Seg30.relationRow842 rho)
    (r843 : Seg30.relationRow843 rho)
    (r844 : Seg30.relationRow844 rho)
    (r845 : Seg30.relationRow845 rho)
    (r846 : Seg30.relationRow846 rho)
    (hacc : onCurve (seg30RvkAcc rho 119)) :
    RvkFixedBaseLadder.FixedStepRel 119 (rho 28430)
      (seg30RvkAcc rho 119) (seg30RvkAcc rho (119 + 1)) := by
  have hbrow119 : (1*(rho 28430))*(1 + (-1)*(rho 28430)) = 0 := by
    simpa [Seg30.relationRow119] using r119
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX118 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY118 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr119 : RvkFixedBaseLadder.FixedStepRel 119 (rho 28430)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX118 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY118 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX119 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY119 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc119, seg30AccX119, seg30AccY119, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung119_wide (rho 28311 : Seg30.F) (rho 28430 : Seg30.F) (seg30AccX118 rho : Seg30.F) (seg30AccY118 rho : Seg30.F) (rho 29152 : Seg30.F) (rho 29153 : Seg30.F) (rho 29154 : Seg30.F) (rho 29155 : Seg30.F) (rho 29156 : Seg30.F) hinput
        (by simpa using seg30_prefix_119_v2 rho r842)
        (by simpa using seg30_prefix_119_addX rho r843)
        (by simpa using seg30_prefix_119_addY rho r844)
        (by simpa using seg30_prefix_119_selX rho r845)
        (by simpa using seg30_prefix_119_selY rho r846)
        hbrow119
  exact hr119

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

