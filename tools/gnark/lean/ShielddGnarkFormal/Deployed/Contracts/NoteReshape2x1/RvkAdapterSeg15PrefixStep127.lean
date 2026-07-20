import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas12
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

theorem seg15_prefix_step127 (rho : Nat -> Seg15.F)
    (r127 : Seg15.relationRow127 rho)
    (r882 : Seg15.relationRow882 rho)
    (r883 : Seg15.relationRow883 rho)
    (r884 : Seg15.relationRow884 rho)
    (r885 : Seg15.relationRow885 rho)
    (r886 : Seg15.relationRow886 rho)
    (hacc : onCurve (seg15RvkAcc rho 127)) :
    RvkFixedBaseLadder.FixedStepRel 127 (rho 16257)
      (seg15RvkAcc rho 127) (seg15RvkAcc rho (127 + 1)) := by
  have hbrow127 : (1*(rho 16257))*(1 + (-1)*(rho 16257)) = 0 := by
    simpa [Seg15.relationRow127] using r127
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX126 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY126 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr127 : RvkFixedBaseLadder.FixedStepRel 127 (rho 16257)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX126 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY126 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX127 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY127 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc127, seg15AccX127, seg15AccY127, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung127_wide (rho 16130 : Seg15.F) (rho 16257 : Seg15.F) (seg15AccX126 rho : Seg15.F) (seg15AccY126 rho : Seg15.F) (rho 17011 : Seg15.F) (rho 17012 : Seg15.F) (rho 17013 : Seg15.F) (rho 17014 : Seg15.F) (rho 17015 : Seg15.F) hinput
        (by simpa using seg15_prefix_127_v2 rho r882)
        (by simpa using seg15_prefix_127_addX rho r883)
        (by simpa using seg15_prefix_127_addY rho r884)
        (by simpa using seg15_prefix_127_selX rho r885)
        (by simpa using seg15_prefix_127_selY rho r886)
        hbrow127
  exact hr127

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

