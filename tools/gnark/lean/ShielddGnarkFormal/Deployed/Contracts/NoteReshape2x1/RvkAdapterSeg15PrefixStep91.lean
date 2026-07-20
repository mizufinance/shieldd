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

theorem seg15_prefix_step91 (rho : Nat -> Seg15.F)
    (r91 : Seg15.relationRow91 rho)
    (r702 : Seg15.relationRow702 rho)
    (r703 : Seg15.relationRow703 rho)
    (r704 : Seg15.relationRow704 rho)
    (r705 : Seg15.relationRow705 rho)
    (r706 : Seg15.relationRow706 rho)
    (hacc : onCurve (seg15RvkAcc rho 91)) :
    RvkFixedBaseLadder.FixedStepRel 91 (rho 16221)
      (seg15RvkAcc rho 91) (seg15RvkAcc rho (91 + 1)) := by
  have hbrow91 : (1*(rho 16221))*(1 + (-1)*(rho 16221)) = 0 := by
    simpa [Seg15.relationRow91] using r91
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX90 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY90 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr91 : RvkFixedBaseLadder.FixedStepRel 91 (rho 16221)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX90 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY90 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX91 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY91 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc91, seg15AccX91, seg15AccY91, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung91_wide (rho 16130 : Seg15.F) (rho 16221 : Seg15.F) (seg15AccX90 rho : Seg15.F) (seg15AccY90 rho : Seg15.F) (rho 16831 : Seg15.F) (rho 16832 : Seg15.F) (rho 16833 : Seg15.F) (rho 16834 : Seg15.F) (rho 16835 : Seg15.F) hinput
        (by simpa using seg15_prefix_91_v2 rho r702)
        (by simpa using seg15_prefix_91_addX rho r703)
        (by simpa using seg15_prefix_91_addY rho r704)
        (by simpa using seg15_prefix_91_selX rho r705)
        (by simpa using seg15_prefix_91_selY rho r706)
        hbrow91
  exact hr91

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

