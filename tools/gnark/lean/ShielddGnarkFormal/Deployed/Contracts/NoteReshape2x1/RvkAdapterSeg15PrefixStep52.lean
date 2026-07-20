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

theorem seg15_prefix_step52 (rho : Nat -> Seg15.F)
    (r52 : Seg15.relationRow52 rho)
    (r507 : Seg15.relationRow507 rho)
    (r508 : Seg15.relationRow508 rho)
    (r509 : Seg15.relationRow509 rho)
    (r510 : Seg15.relationRow510 rho)
    (r511 : Seg15.relationRow511 rho)
    (hacc : onCurve (seg15RvkAcc rho 52)) :
    RvkFixedBaseLadder.FixedStepRel 52 (rho 16182)
      (seg15RvkAcc rho 52) (seg15RvkAcc rho (52 + 1)) := by
  have hbrow52 : (1*(rho 16182))*(1 + (-1)*(rho 16182)) = 0 := by
    simpa [Seg15.relationRow52] using r52
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX51 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY51 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr52 : RvkFixedBaseLadder.FixedStepRel 52 (rho 16182)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX51 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY51 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX52 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY52 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc52, seg15AccX52, seg15AccY52, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung52_wide (rho 16130 : Seg15.F) (rho 16182 : Seg15.F) (seg15AccX51 rho : Seg15.F) (seg15AccY51 rho : Seg15.F) (rho 16636 : Seg15.F) (rho 16637 : Seg15.F) (rho 16638 : Seg15.F) (rho 16639 : Seg15.F) (rho 16640 : Seg15.F) hinput
        (by simpa using seg15_prefix_52_v2 rho r507)
        (by simpa using seg15_prefix_52_addX rho r508)
        (by simpa using seg15_prefix_52_addY rho r509)
        (by simpa using seg15_prefix_52_selX rho r510)
        (by simpa using seg15_prefix_52_selY rho r511)
        hbrow52
  exact hr52

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

