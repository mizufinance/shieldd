import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas14
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

theorem seg15_prefix_step149 (rho : Nat -> Seg15.F)
    (r149 : Seg15.relationRow149 rho)
    (r992 : Seg15.relationRow992 rho)
    (r993 : Seg15.relationRow993 rho)
    (r994 : Seg15.relationRow994 rho)
    (r995 : Seg15.relationRow995 rho)
    (r996 : Seg15.relationRow996 rho)
    (hacc : onCurve (seg15RvkAcc rho 149)) :
    RvkFixedBaseLadder.FixedStepRel 149 (rho 16279)
      (seg15RvkAcc rho 149) (seg15RvkAcc rho (149 + 1)) := by
  have hbrow149 : (1*(rho 16279))*(1 + (-1)*(rho 16279)) = 0 := by
    simpa [Seg15.relationRow149] using r149
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX148 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY148 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr149 : RvkFixedBaseLadder.FixedStepRel 149 (rho 16279)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX148 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY148 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX149 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY149 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc149, seg15AccX149, seg15AccY149, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung149_wide (rho 16130 : Seg15.F) (rho 16279 : Seg15.F) (seg15AccX148 rho : Seg15.F) (seg15AccY148 rho : Seg15.F) (rho 17121 : Seg15.F) (rho 17122 : Seg15.F) (rho 17123 : Seg15.F) (rho 17124 : Seg15.F) (rho 17125 : Seg15.F) hinput
        (by simpa using seg15_prefix_149_v2 rho r992)
        (by simpa using seg15_prefix_149_addX rho r993)
        (by simpa using seg15_prefix_149_addY rho r994)
        (by simpa using seg15_prefix_149_selX rho r995)
        (by simpa using seg15_prefix_149_selY rho r996)
        hbrow149
  exact hr149

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

