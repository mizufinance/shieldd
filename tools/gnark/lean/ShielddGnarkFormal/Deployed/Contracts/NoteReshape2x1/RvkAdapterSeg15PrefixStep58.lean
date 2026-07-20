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

theorem seg15_prefix_step58 (rho : Nat -> Seg15.F)
    (r58 : Seg15.relationRow58 rho)
    (r537 : Seg15.relationRow537 rho)
    (r538 : Seg15.relationRow538 rho)
    (r539 : Seg15.relationRow539 rho)
    (r540 : Seg15.relationRow540 rho)
    (r541 : Seg15.relationRow541 rho)
    (hacc : onCurve (seg15RvkAcc rho 58)) :
    RvkFixedBaseLadder.FixedStepRel 58 (rho 16188)
      (seg15RvkAcc rho 58) (seg15RvkAcc rho (58 + 1)) := by
  have hbrow58 : (1*(rho 16188))*(1 + (-1)*(rho 16188)) = 0 := by
    simpa [Seg15.relationRow58] using r58
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX57 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY57 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr58 : RvkFixedBaseLadder.FixedStepRel 58 (rho 16188)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX57 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY57 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX58 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY58 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc58, seg15AccX58, seg15AccY58, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung58_wide (rho 16130 : Seg15.F) (rho 16188 : Seg15.F) (seg15AccX57 rho : Seg15.F) (seg15AccY57 rho : Seg15.F) (rho 16666 : Seg15.F) (rho 16667 : Seg15.F) (rho 16668 : Seg15.F) (rho 16669 : Seg15.F) (rho 16670 : Seg15.F) hinput
        (by simpa using seg15_prefix_58_v2 rho r537)
        (by simpa using seg15_prefix_58_addX rho r538)
        (by simpa using seg15_prefix_58_addY rho r539)
        (by simpa using seg15_prefix_58_selX rho r540)
        (by simpa using seg15_prefix_58_selY rho r541)
        hbrow58
  exact hr58

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

