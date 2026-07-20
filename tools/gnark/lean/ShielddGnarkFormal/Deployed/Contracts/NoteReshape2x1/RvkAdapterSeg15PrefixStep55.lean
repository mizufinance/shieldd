import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas5
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

theorem seg15_prefix_step55 (rho : Nat -> Seg15.F)
    (r55 : Seg15.relationRow55 rho)
    (r522 : Seg15.relationRow522 rho)
    (r523 : Seg15.relationRow523 rho)
    (r524 : Seg15.relationRow524 rho)
    (r525 : Seg15.relationRow525 rho)
    (r526 : Seg15.relationRow526 rho)
    (hacc : onCurve (seg15RvkAcc rho 55)) :
    RvkFixedBaseLadder.FixedStepRel 55 (rho 16185)
      (seg15RvkAcc rho 55) (seg15RvkAcc rho (55 + 1)) := by
  have hbrow55 : (1*(rho 16185))*(1 + (-1)*(rho 16185)) = 0 := by
    simpa [Seg15.relationRow55] using r55
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX54 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY54 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr55 : RvkFixedBaseLadder.FixedStepRel 55 (rho 16185)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX54 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY54 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX55 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY55 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc55, seg15AccX55, seg15AccY55, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung55_wide (rho 16130 : Seg15.F) (rho 16185 : Seg15.F) (seg15AccX54 rho : Seg15.F) (seg15AccY54 rho : Seg15.F) (rho 16651 : Seg15.F) (rho 16652 : Seg15.F) (rho 16653 : Seg15.F) (rho 16654 : Seg15.F) (rho 16655 : Seg15.F) hinput
        (by simpa using seg15_prefix_55_v2 rho r522)
        (by simpa using seg15_prefix_55_addX rho r523)
        (by simpa using seg15_prefix_55_addY rho r524)
        (by simpa using seg15_prefix_55_selX rho r525)
        (by simpa using seg15_prefix_55_selY rho r526)
        hbrow55
  exact hr55

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

