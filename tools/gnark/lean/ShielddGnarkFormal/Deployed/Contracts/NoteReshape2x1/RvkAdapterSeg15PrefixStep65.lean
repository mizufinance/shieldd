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

theorem seg15_prefix_step65 (rho : Nat -> Seg15.F)
    (r65 : Seg15.relationRow65 rho)
    (r572 : Seg15.relationRow572 rho)
    (r573 : Seg15.relationRow573 rho)
    (r574 : Seg15.relationRow574 rho)
    (r575 : Seg15.relationRow575 rho)
    (r576 : Seg15.relationRow576 rho)
    (hacc : onCurve (seg15RvkAcc rho 65)) :
    RvkFixedBaseLadder.FixedStepRel 65 (rho 16195)
      (seg15RvkAcc rho 65) (seg15RvkAcc rho (65 + 1)) := by
  have hbrow65 : (1*(rho 16195))*(1 + (-1)*(rho 16195)) = 0 := by
    simpa [Seg15.relationRow65] using r65
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX64 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY64 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr65 : RvkFixedBaseLadder.FixedStepRel 65 (rho 16195)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX64 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY64 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX65 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY65 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc65, seg15AccX65, seg15AccY65, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung65_wide (rho 16130 : Seg15.F) (rho 16195 : Seg15.F) (seg15AccX64 rho : Seg15.F) (seg15AccY64 rho : Seg15.F) (rho 16701 : Seg15.F) (rho 16702 : Seg15.F) (rho 16703 : Seg15.F) (rho 16704 : Seg15.F) (rho 16705 : Seg15.F) hinput
        (by simpa using seg15_prefix_65_v2 rho r572)
        (by simpa using seg15_prefix_65_addX rho r573)
        (by simpa using seg15_prefix_65_addY rho r574)
        (by simpa using seg15_prefix_65_selX rho r575)
        (by simpa using seg15_prefix_65_selY rho r576)
        hbrow65
  exact hr65

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

