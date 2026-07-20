import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas1
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

theorem seg15_prefix_step16 (rho : Nat -> Seg15.F)
    (r16 : Seg15.relationRow16 rho)
    (r327 : Seg15.relationRow327 rho)
    (r328 : Seg15.relationRow328 rho)
    (r329 : Seg15.relationRow329 rho)
    (r330 : Seg15.relationRow330 rho)
    (r331 : Seg15.relationRow331 rho)
    (hacc : onCurve (seg15RvkAcc rho 16)) :
    RvkFixedBaseLadder.FixedStepRel 16 (rho 16146)
      (seg15RvkAcc rho 16) (seg15RvkAcc rho (16 + 1)) := by
  have hbrow16 : (1*(rho 16146))*(1 + (-1)*(rho 16146)) = 0 := by
    simpa [Seg15.relationRow16] using r16
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX15 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY15 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr16 : RvkFixedBaseLadder.FixedStepRel 16 (rho 16146)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX15 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY15 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX16 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY16 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc16, seg15AccX16, seg15AccY16, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung16_wide (rho 16130 : Seg15.F) (rho 16146 : Seg15.F) (seg15AccX15 rho : Seg15.F) (seg15AccY15 rho : Seg15.F) (rho 16456 : Seg15.F) (rho 16457 : Seg15.F) (rho 16458 : Seg15.F) (rho 16459 : Seg15.F) (rho 16460 : Seg15.F) hinput
        (by simpa using seg15_prefix_16_v2 rho r327)
        (by simpa using seg15_prefix_16_addX rho r328)
        (by simpa using seg15_prefix_16_addY rho r329)
        (by simpa using seg15_prefix_16_selX rho r330)
        (by simpa using seg15_prefix_16_selY rho r331)
        hbrow16
  exact hr16

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

