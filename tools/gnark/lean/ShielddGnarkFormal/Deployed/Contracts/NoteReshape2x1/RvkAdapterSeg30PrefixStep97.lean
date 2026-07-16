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

theorem seg30_prefix_step97 (rho : Nat -> Seg30.F)
    (r97 : Seg30.relationRow97 rho)
    (r732 : Seg30.relationRow732 rho)
    (r733 : Seg30.relationRow733 rho)
    (r734 : Seg30.relationRow734 rho)
    (r735 : Seg30.relationRow735 rho)
    (r736 : Seg30.relationRow736 rho)
    (hacc : onCurve (seg30RvkAcc rho 97)) :
    RvkFixedBaseLadder.FixedStepRel 97 (rho 28414)
      (seg30RvkAcc rho 97) (seg30RvkAcc rho (97 + 1)) := by
  have hbrow97 : (1*(rho 28414))*(1 + (-1)*(rho 28414)) = 0 := by
    simpa [Seg30.relationRow97] using r97
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX96 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY96 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr97 : RvkFixedBaseLadder.FixedStepRel 97 (rho 28414)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX96 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY96 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX97 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY97 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc97, seg30AccX97, seg30AccY97, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung97_wide (rho 28317 : Seg30.F) (rho 28414 : Seg30.F) (seg30AccX96 rho : Seg30.F) (seg30AccY96 rho : Seg30.F) (rho 29048 : Seg30.F) (rho 29049 : Seg30.F) (rho 29050 : Seg30.F) (rho 29051 : Seg30.F) (rho 29052 : Seg30.F) hinput
        (by simpa using seg30_prefix_97_v2 rho r732)
        (by simpa using seg30_prefix_97_addX rho r733)
        (by simpa using seg30_prefix_97_addY rho r734)
        (by simpa using seg30_prefix_97_selX rho r735)
        (by simpa using seg30_prefix_97_selY rho r736)
        hbrow97
  exact hr97

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

