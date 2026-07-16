import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas0
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

theorem seg30_prefix_step6 (rho : Nat -> Seg30.F)
    (r6 : Seg30.relationRow6 rho)
    (r277 : Seg30.relationRow277 rho)
    (r278 : Seg30.relationRow278 rho)
    (r279 : Seg30.relationRow279 rho)
    (r280 : Seg30.relationRow280 rho)
    (r281 : Seg30.relationRow281 rho)
    (hacc : onCurve (seg30RvkAcc rho 6)) :
    RvkFixedBaseLadder.FixedStepRel 6 (rho 28323)
      (seg30RvkAcc rho 6) (seg30RvkAcc rho (6 + 1)) := by
  have hbrow6 : (1*(rho 28323))*(1 + (-1)*(rho 28323)) = 0 := by
    simpa [Seg30.relationRow6] using r6
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX5 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY5 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr6 : RvkFixedBaseLadder.FixedStepRel 6 (rho 28323)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX5 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY5 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX6 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY6 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc6, seg30AccX6, seg30AccY6, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung6_wide (rho 28317 : Seg30.F) (rho 28323 : Seg30.F) (seg30AccX5 rho : Seg30.F) (seg30AccY5 rho : Seg30.F) (rho 28593 : Seg30.F) (rho 28594 : Seg30.F) (rho 28595 : Seg30.F) (rho 28596 : Seg30.F) (rho 28597 : Seg30.F) hinput
        (by simpa using seg30_prefix_6_v2 rho r277)
        (by simpa using seg30_prefix_6_addX rho r278)
        (by simpa using seg30_prefix_6_addY rho r279)
        (by simpa using seg30_prefix_6_selX rho r280)
        (by simpa using seg30_prefix_6_selY rho r281)
        hbrow6
  exact hr6

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

