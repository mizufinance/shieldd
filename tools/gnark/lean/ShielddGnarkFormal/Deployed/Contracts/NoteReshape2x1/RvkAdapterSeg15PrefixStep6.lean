import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas0
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

theorem seg15_prefix_step6 (rho : Nat -> Seg15.F)
    (r6 : Seg15.relationRow6 rho)
    (r277 : Seg15.relationRow277 rho)
    (r278 : Seg15.relationRow278 rho)
    (r279 : Seg15.relationRow279 rho)
    (r280 : Seg15.relationRow280 rho)
    (r281 : Seg15.relationRow281 rho)
    (hacc : onCurve (seg15RvkAcc rho 6)) :
    RvkFixedBaseLadder.FixedStepRel 6 (rho 16142)
      (seg15RvkAcc rho 6) (seg15RvkAcc rho (6 + 1)) := by
  have hbrow6 : (1*(rho 16142))*(1 + (-1)*(rho 16142)) = 0 := by
    simpa [Seg15.relationRow6] using r6
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX5 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY5 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr6 : RvkFixedBaseLadder.FixedStepRel 6 (rho 16142)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX5 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY5 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX6 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY6 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc6, seg15AccX6, seg15AccY6, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung6_wide (rho 16136 : Seg15.F) (rho 16142 : Seg15.F) (seg15AccX5 rho : Seg15.F) (seg15AccY5 rho : Seg15.F) (rho 16412 : Seg15.F) (rho 16413 : Seg15.F) (rho 16414 : Seg15.F) (rho 16415 : Seg15.F) (rho 16416 : Seg15.F) hinput
        (by simpa using seg15_prefix_6_v2 rho r277)
        (by simpa using seg15_prefix_6_addX rho r278)
        (by simpa using seg15_prefix_6_addY rho r279)
        (by simpa using seg15_prefix_6_selX rho r280)
        (by simpa using seg15_prefix_6_selY rho r281)
        hbrow6
  exact hr6

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

