import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas8
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

theorem seg15_prefix_step83 (rho : Nat -> Seg15.F)
    (r83 : Seg15.relationRow83 rho)
    (r662 : Seg15.relationRow662 rho)
    (r663 : Seg15.relationRow663 rho)
    (r664 : Seg15.relationRow664 rho)
    (r665 : Seg15.relationRow665 rho)
    (r666 : Seg15.relationRow666 rho)
    (hacc : onCurve (seg15RvkAcc rho 83)) :
    RvkFixedBaseLadder.FixedStepRel 83 (rho 16213)
      (seg15RvkAcc rho 83) (seg15RvkAcc rho (83 + 1)) := by
  have hbrow83 : (1*(rho 16213))*(1 + (-1)*(rho 16213)) = 0 := by
    simpa [Seg15.relationRow83] using r83
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX82 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY82 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr83 : RvkFixedBaseLadder.FixedStepRel 83 (rho 16213)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX82 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY82 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX83 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY83 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc83, seg15AccX83, seg15AccY83, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung83_wide (rho 16130 : Seg15.F) (rho 16213 : Seg15.F) (seg15AccX82 rho : Seg15.F) (seg15AccY82 rho : Seg15.F) (rho 16791 : Seg15.F) (rho 16792 : Seg15.F) (rho 16793 : Seg15.F) (rho 16794 : Seg15.F) (rho 16795 : Seg15.F) hinput
        (by simpa using seg15_prefix_83_v2 rho r662)
        (by simpa using seg15_prefix_83_addX rho r663)
        (by simpa using seg15_prefix_83_addY rho r664)
        (by simpa using seg15_prefix_83_selX rho r665)
        (by simpa using seg15_prefix_83_selY rho r666)
        hbrow83
  exact hr83

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

