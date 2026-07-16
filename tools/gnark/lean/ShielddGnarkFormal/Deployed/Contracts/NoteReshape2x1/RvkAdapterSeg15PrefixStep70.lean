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

theorem seg15_prefix_step70 (rho : Nat -> Seg15.F)
    (r70 : Seg15.relationRow70 rho)
    (r597 : Seg15.relationRow597 rho)
    (r598 : Seg15.relationRow598 rho)
    (r599 : Seg15.relationRow599 rho)
    (r600 : Seg15.relationRow600 rho)
    (r601 : Seg15.relationRow601 rho)
    (hacc : onCurve (seg15RvkAcc rho 70)) :
    RvkFixedBaseLadder.FixedStepRel 70 (rho 16206)
      (seg15RvkAcc rho 70) (seg15RvkAcc rho (70 + 1)) := by
  have hbrow70 : (1*(rho 16206))*(1 + (-1)*(rho 16206)) = 0 := by
    simpa [Seg15.relationRow70] using r70
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX69 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY69 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr70 : RvkFixedBaseLadder.FixedStepRel 70 (rho 16206)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX69 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY69 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX70 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY70 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc70, seg15AccX70, seg15AccY70, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung70_wide (rho 16136 : Seg15.F) (rho 16206 : Seg15.F) (seg15AccX69 rho : Seg15.F) (seg15AccY69 rho : Seg15.F) (rho 16732 : Seg15.F) (rho 16733 : Seg15.F) (rho 16734 : Seg15.F) (rho 16735 : Seg15.F) (rho 16736 : Seg15.F) hinput
        (by simpa using seg15_prefix_70_v2 rho r597)
        (by simpa using seg15_prefix_70_addX rho r598)
        (by simpa using seg15_prefix_70_addY rho r599)
        (by simpa using seg15_prefix_70_selX rho r600)
        (by simpa using seg15_prefix_70_selY rho r601)
        hbrow70
  exact hr70

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

