import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas10
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

theorem seg15_prefix_step109 (rho : Nat -> Seg15.F)
    (r109 : Seg15.relationRow109 rho)
    (r792 : Seg15.relationRow792 rho)
    (r793 : Seg15.relationRow793 rho)
    (r794 : Seg15.relationRow794 rho)
    (r795 : Seg15.relationRow795 rho)
    (r796 : Seg15.relationRow796 rho)
    (hacc : onCurve (seg15RvkAcc rho 109)) :
    RvkFixedBaseLadder.FixedStepRel 109 (rho 16239)
      (seg15RvkAcc rho 109) (seg15RvkAcc rho (109 + 1)) := by
  have hbrow109 : (1*(rho 16239))*(1 + (-1)*(rho 16239)) = 0 := by
    simpa [Seg15.relationRow109] using r109
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX108 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY108 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr109 : RvkFixedBaseLadder.FixedStepRel 109 (rho 16239)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX108 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY108 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX109 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY109 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc109, seg15AccX109, seg15AccY109, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung109_wide (rho 16130 : Seg15.F) (rho 16239 : Seg15.F) (seg15AccX108 rho : Seg15.F) (seg15AccY108 rho : Seg15.F) (rho 16921 : Seg15.F) (rho 16922 : Seg15.F) (rho 16923 : Seg15.F) (rho 16924 : Seg15.F) (rho 16925 : Seg15.F) hinput
        (by simpa using seg15_prefix_109_v2 rho r792)
        (by simpa using seg15_prefix_109_addX rho r793)
        (by simpa using seg15_prefix_109_addY rho r794)
        (by simpa using seg15_prefix_109_selX rho r795)
        (by simpa using seg15_prefix_109_selY rho r796)
        hbrow109
  exact hr109

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

