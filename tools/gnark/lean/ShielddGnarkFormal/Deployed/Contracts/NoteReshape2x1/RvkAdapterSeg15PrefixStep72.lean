import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas7
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

theorem seg15_prefix_step72 (rho : Nat -> Seg15.F)
    (r72 : Seg15.relationRow72 rho)
    (r607 : Seg15.relationRow607 rho)
    (r608 : Seg15.relationRow608 rho)
    (r609 : Seg15.relationRow609 rho)
    (r610 : Seg15.relationRow610 rho)
    (r611 : Seg15.relationRow611 rho)
    (hacc : onCurve (seg15RvkAcc rho 72)) :
    RvkFixedBaseLadder.FixedStepRel 72 (rho 16202)
      (seg15RvkAcc rho 72) (seg15RvkAcc rho (72 + 1)) := by
  have hbrow72 : (1*(rho 16202))*(1 + (-1)*(rho 16202)) = 0 := by
    simpa [Seg15.relationRow72] using r72
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX71 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY71 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr72 : RvkFixedBaseLadder.FixedStepRel 72 (rho 16202)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX71 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY71 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX72 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY72 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc72, seg15AccX72, seg15AccY72, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung72_wide (rho 16130 : Seg15.F) (rho 16202 : Seg15.F) (seg15AccX71 rho : Seg15.F) (seg15AccY71 rho : Seg15.F) (rho 16736 : Seg15.F) (rho 16737 : Seg15.F) (rho 16738 : Seg15.F) (rho 16739 : Seg15.F) (rho 16740 : Seg15.F) hinput
        (by simpa using seg15_prefix_72_v2 rho r607)
        (by simpa using seg15_prefix_72_addX rho r608)
        (by simpa using seg15_prefix_72_addY rho r609)
        (by simpa using seg15_prefix_72_selX rho r610)
        (by simpa using seg15_prefix_72_selY rho r611)
        hbrow72
  exact hr72

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

