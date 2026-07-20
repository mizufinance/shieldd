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

theorem seg15_prefix_step8 (rho : Nat -> Seg15.F)
    (r8 : Seg15.relationRow8 rho)
    (r287 : Seg15.relationRow287 rho)
    (r288 : Seg15.relationRow288 rho)
    (r289 : Seg15.relationRow289 rho)
    (r290 : Seg15.relationRow290 rho)
    (r291 : Seg15.relationRow291 rho)
    (hacc : onCurve (seg15RvkAcc rho 8)) :
    RvkFixedBaseLadder.FixedStepRel 8 (rho 16138)
      (seg15RvkAcc rho 8) (seg15RvkAcc rho (8 + 1)) := by
  have hbrow8 : (1*(rho 16138))*(1 + (-1)*(rho 16138)) = 0 := by
    simpa [Seg15.relationRow8] using r8
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX7 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY7 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr8 : RvkFixedBaseLadder.FixedStepRel 8 (rho 16138)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX7 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY7 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX8 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY8 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc8, seg15AccX8, seg15AccY8, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung8_wide (rho 16130 : Seg15.F) (rho 16138 : Seg15.F) (seg15AccX7 rho : Seg15.F) (seg15AccY7 rho : Seg15.F) (rho 16416 : Seg15.F) (rho 16417 : Seg15.F) (rho 16418 : Seg15.F) (rho 16419 : Seg15.F) (rho 16420 : Seg15.F) hinput
        (by simpa using seg15_prefix_8_v2 rho r287)
        (by simpa using seg15_prefix_8_addX rho r288)
        (by simpa using seg15_prefix_8_addY rho r289)
        (by simpa using seg15_prefix_8_selX rho r290)
        (by simpa using seg15_prefix_8_selY rho r291)
        hbrow8
  exact hr8

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

