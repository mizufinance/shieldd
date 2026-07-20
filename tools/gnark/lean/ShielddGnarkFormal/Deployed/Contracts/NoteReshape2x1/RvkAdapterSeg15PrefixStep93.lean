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

theorem seg15_prefix_step93 (rho : Nat -> Seg15.F)
    (r93 : Seg15.relationRow93 rho)
    (r712 : Seg15.relationRow712 rho)
    (r713 : Seg15.relationRow713 rho)
    (r714 : Seg15.relationRow714 rho)
    (r715 : Seg15.relationRow715 rho)
    (r716 : Seg15.relationRow716 rho)
    (hacc : onCurve (seg15RvkAcc rho 93)) :
    RvkFixedBaseLadder.FixedStepRel 93 (rho 16223)
      (seg15RvkAcc rho 93) (seg15RvkAcc rho (93 + 1)) := by
  have hbrow93 : (1*(rho 16223))*(1 + (-1)*(rho 16223)) = 0 := by
    simpa [Seg15.relationRow93] using r93
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX92 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY92 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr93 : RvkFixedBaseLadder.FixedStepRel 93 (rho 16223)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX92 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY92 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX93 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY93 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc93, seg15AccX93, seg15AccY93, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung93_wide (rho 16130 : Seg15.F) (rho 16223 : Seg15.F) (seg15AccX92 rho : Seg15.F) (seg15AccY92 rho : Seg15.F) (rho 16841 : Seg15.F) (rho 16842 : Seg15.F) (rho 16843 : Seg15.F) (rho 16844 : Seg15.F) (rho 16845 : Seg15.F) hinput
        (by simpa using seg15_prefix_93_v2 rho r712)
        (by simpa using seg15_prefix_93_addX rho r713)
        (by simpa using seg15_prefix_93_addY rho r714)
        (by simpa using seg15_prefix_93_selX rho r715)
        (by simpa using seg15_prefix_93_selY rho r716)
        hbrow93
  exact hr93

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

