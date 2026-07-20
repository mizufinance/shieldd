import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas9
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

theorem seg15_prefix_step97 (rho : Nat -> Seg15.F)
    (r97 : Seg15.relationRow97 rho)
    (r732 : Seg15.relationRow732 rho)
    (r733 : Seg15.relationRow733 rho)
    (r734 : Seg15.relationRow734 rho)
    (r735 : Seg15.relationRow735 rho)
    (r736 : Seg15.relationRow736 rho)
    (hacc : onCurve (seg15RvkAcc rho 97)) :
    RvkFixedBaseLadder.FixedStepRel 97 (rho 16227)
      (seg15RvkAcc rho 97) (seg15RvkAcc rho (97 + 1)) := by
  have hbrow97 : (1*(rho 16227))*(1 + (-1)*(rho 16227)) = 0 := by
    simpa [Seg15.relationRow97] using r97
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX96 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY96 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr97 : RvkFixedBaseLadder.FixedStepRel 97 (rho 16227)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX96 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY96 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX97 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY97 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc97, seg15AccX97, seg15AccY97, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung97_wide (rho 16130 : Seg15.F) (rho 16227 : Seg15.F) (seg15AccX96 rho : Seg15.F) (seg15AccY96 rho : Seg15.F) (rho 16861 : Seg15.F) (rho 16862 : Seg15.F) (rho 16863 : Seg15.F) (rho 16864 : Seg15.F) (rho 16865 : Seg15.F) hinput
        (by simpa using seg15_prefix_97_v2 rho r732)
        (by simpa using seg15_prefix_97_addX rho r733)
        (by simpa using seg15_prefix_97_addY rho r734)
        (by simpa using seg15_prefix_97_selX rho r735)
        (by simpa using seg15_prefix_97_selY rho r736)
        hbrow97
  exact hr97

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

